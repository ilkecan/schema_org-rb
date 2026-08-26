namespace :codegen do
  desc 'Check generated runtime artifacts for drift'
  task :check do
    require 'tmpdir'
    require 'digest'
    require './codegen/system/boot'
    schema_file = File.expand_path('../../data/schema.ttl', __dir__)
    parser = SchemaOrg::Codegen::Parser.new(schema_file:)
    vocabulary = SchemaOrg::Codegen::Vocabulary.new(parser:, strict: false)
    version = Pathname('codegen/data/SCHEMA_VERSION.txt').read.strip.delete_suffix('-release')

    Dir.mktmpdir('schema-org-check') do |directory|
      Dir.chdir(directory) do
        writer = SchemaOrg::Codegen::Writer.new
        manifest = SchemaOrg::Codegen::Manifest.new(writer:)
        template_engine = SchemaOrg::Codegen::TemplateEngine.new(templates_root: File.expand_path('../../templates', __dir__))
        generator = SchemaOrg::Codegen::Generator.new(manifest:, template_engine:, writer:)
        orchestrator = SchemaOrg::Codegen::Orchestrator.new(
          generator:, manifest:, vocabulary:,
          schema_version: SchemaOrg::Codegen::Models::SchemaVersion.new(schema_version: version),
        )
        orchestrator.orchestrate
        manifest.save
      end
      expected = Dir['lib/schema_org/mixins/**/*.rb'].sort + Dir['lib/schema_org/types/**/*.rb'].sort + ['lib/schema_org/schema_version.rb', 'codegen/manifest.json']
      actual = Dir.chdir(directory) { Dir['lib/schema_org/mixins/**/*.rb'].sort + Dir['lib/schema_org/types/**/*.rb'].sort + ['lib/schema_org/schema_version.rb', 'codegen/manifest.json'] }
      checked = expected
      differing = (expected | actual | checked).select do |path|
        left = File.join(directory, path)
        right = path
        !File.file?(left) || !File.file?(right) || Digest::SHA256.file(left).hexdigest != Digest::SHA256.file(right).hexdigest
      end
      abort "Generated files differ:\n#{differing.join("\n")}" unless differing.empty?
    end
    puts 'Generated files are up to date.'
  end
end
