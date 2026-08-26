namespace :codegen do
  desc "Check generated runtime artifacts for drift"
  task :check do
    require "digest"
    require "tmpdir"
    require "./codegen/system/boot"

    root = Pathname.new(File.expand_path("../../..", __dir__))
    schema_file = root.join("codegen/data/schema.ttl")
    parser = SchemaOrg::Codegen::Parser.new(schema_file:)
    vocabulary = SchemaOrg::Codegen::Vocabulary.new(parser:)
    schema_version = SchemaOrg::Codegen::Models::SchemaVersion.current(schema_file:)

    Dir.mktmpdir("schema-org-check") do |directory|
      output_root = Pathname.new(directory)
      writer = SchemaOrg::Codegen::Writer.new
      manifest = SchemaOrg::Codegen::Manifest.new(
        writer:,
        manifest_root: output_root.join("codegen"),
        runtime_root: output_root.join("lib/schema_org"),
        signature_root: output_root.join("sig")
      )
      template_engine = SchemaOrg::Codegen::TemplateEngine.new(
        templates_root: root.join("codegen/templates")
      )
      generator = SchemaOrg::Codegen::Generator.new(
        manifest:,
        template_engine:,
        writer:,
        lib_root: output_root.join("lib/schema_org"),
        signature_root: output_root.join("sig")
      )
      orchestrator = SchemaOrg::Codegen::Orchestrator.new(
        generator:,
        manifest:,
        vocabulary:,
        schema_version:
      )
      Dir.chdir(output_root) { orchestrator.orchestrate }

      expected = Dir.chdir(root) do
        Dir["lib/schema_org/mixins/**/*.rb"] +
          Dir["lib/schema_org/types/**/*.rb"] +
          %w[lib/schema_org/schema_version.rb lib/schema_org/generated_vocabulary.rb sig/schema_org.rbs codegen/manifest.json]
      end.sort
      actual = Dir.chdir(output_root) do
        Dir["lib/schema_org/mixins/**/*.rb"] +
          Dir["lib/schema_org/types/**/*.rb"] +
          %w[lib/schema_org/schema_version.rb lib/schema_org/generated_vocabulary.rb sig/schema_org.rbs codegen/manifest.json]
      end.sort
      differing = (expected | actual).select do |path|
        left = root.join(path)
        right = output_root.join(path)
        !left.file? || !right.file? || Digest::SHA256.file(left).hexdigest != Digest::SHA256.file(right).hexdigest
      end
      abort "Generated files differ:\n#{differing.join("\n")}" unless differing.empty?
    end
    puts "Generated files are up to date."
  end
end
