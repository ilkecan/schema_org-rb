# frozen_string_literal: true

require "digest"
require "json"
require "pathname"
require "open3"
require "rubygems/package"
require "tmpdir"

namespace :package do
  desc "Verify the built gem contents and installed smoke load"
  task :check do
    spec = Gem::Specification.load("schema_org.gemspec")
    abort "Unable to load gem specification" unless spec

    output, error, status = Open3.capture3(
      "git", "-C", Dir.pwd, "ls-files", "--cached", "-z", "--",
      "lib/**/*.rb", "lib/*.rb", "sig/**/*.rbs", "sig/*.rbs", "LICENSE.txt", "LICENSE-SCHEMA-ORG.txt", "README.md", "CHANGELOG.md"
    )
    abort "Unable to list tracked package files: #{error}" unless status.success?
    allowed = output.split("\0").reject(&:empty?).sort
    abort "Gem specification file list differs" unless spec.files.sort == allowed

    Rake::Task["build"].invoke
    gem_file = Pathname.new("pkg/#{spec.full_name}.gem").expand_path
    abort "Built gem not found: #{gem_file}" unless gem_file.file?

    package = Gem::Package.new(gem_file.to_s)
    abort "Built gem file list differs" unless package.spec.files.sort == allowed

    manifest = JSON.parse(Pathname.new("codegen/manifest.json").read)
    expected_signature = Pathname.new("sig/schema_org.rbs").binread
    abort "Signature manifest checksum differs" unless manifest.fetch("signature/schema_org.rbs") == Digest::MD5.hexdigest(expected_signature)

    Dir.mktmpdir("schema-org-package") do |extract_directory|
      package.extract_files(extract_directory)
      packaged_signature = Pathname.new(extract_directory).join("sig/schema_org.rbs").binread
      abort "Packaged signature differs" unless packaged_signature == expected_signature
      abort "Packaged signature checksum differs" unless Digest::MD5.hexdigest(packaged_signature) == manifest.fetch("signature/schema_org.rbs")
    end

    smoke = <<~RUBY
      require "json"
      require "schema_org"

      Zeitwerk::Loader.eager_load_all
      [SchemaOrg::FAQPage, SchemaOrg::WPAdBlock, SchemaOrg::ThreeDModel, SchemaOrg::MedicalBusiness, SchemaOrg::BusOrCoach, SchemaOrg::Atlas].each do |constant|
        abort "missing generated constant" unless constant.is_a?(Class)
      end
      abort "schema ancestry mismatch" unless SchemaOrg::MedicalClinic.schema_type?(SchemaOrg::MedicalOrganization)
      expected_types = [SchemaOrg::Physician, SchemaOrg::MedicalBusiness, SchemaOrg::MedicalOrganization, SchemaOrg::LocalBusiness]
      abort "schema type order mismatch" unless SchemaOrg::Physician.schema_types.first(4) == expected_types

      values = [
        SchemaOrg::LocalBusiness.new(legal_name: "Example", latitude: 47.6),
        SchemaOrg::Offer.new(availability: SchemaOrg::ItemAvailability::IN_STOCK),
        SchemaOrg::ThreeDModel.new
      ]
      expected = [
        {"@context" => "https://schema.org", "@type" => "LocalBusiness", "latitude" => 47.6, "legalName" => "Example"},
        {"@context" => "https://schema.org", "@type" => "Offer", "availability" => "https://schema.org/InStock"},
        {"@context" => "https://schema.org", "@type" => "3DModel"}
      ]
      actual = values.map { |value| JSON.parse(value.to_json) }
      abort "JSON-LD smoke mismatch" unless actual == expected
      puts JSON.generate(actual)
    RUBY

    Dir.mktmpdir("schema-org-gem-home") do |gem_home|
      Dir.mktmpdir("schema-org-gem-work") do |working_directory|
        environment = {"GEM_HOME" => gem_home, "GEM_PATH" => gem_home}
        Bundler.with_unbundled_env do
          install = [Gem.ruby, "-S", "gem", "install", gem_file.to_s, "--no-document"]
          abort "Gem installation failed" unless system(environment, *install)
          Dir.chdir(working_directory) do
            abort "Installed gem smoke check failed" unless system(environment, Gem.ruby, "-e", smoke)
          end
        end
      end
    end
    puts "Package is complete and loadable."
  end
end
