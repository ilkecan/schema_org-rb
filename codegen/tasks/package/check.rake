# frozen_string_literal: true

require "pathname"
require "rubygems/package"
require "tmpdir"

namespace :package do
  desc "Verify the built gem contents and installed smoke load"
  task :check do
    spec = Gem::Specification.load("schema_org.gemspec")
    abort "Unable to load gem specification" unless spec

    Rake::Task["build"].invoke
    gem_file = Pathname.new("pkg/#{spec.full_name}.gem")
    abort "Built gem not found: #{gem_file}" unless gem_file.file?

    expected = spec.files.sort
    actual = Gem::Package.new(gem_file.to_s).spec.files.sort
    abort "Package file list differs" unless actual == expected

    system_path = Gem.path.join(File::PATH_SEPARATOR)
    Dir.mktmpdir("schema-org-package") do |directory|
      environment = {
        "GEM_HOME" => directory,
        "GEM_PATH" => system_path,
        "BUNDLE_GEMFILE" => nil,
        "BUNDLE_PATH" => nil,
        "BUNDLE_WITH" => nil,
        "BUNDLE_WITHOUT" => nil
      }
      install = [Gem.ruby, "-S", "gem", "install", "--local", gem_file.to_s, "--ignore-dependencies", "--no-document"]
      abort "Gem installation failed" unless system(environment, *install)
      smoke = 'gem "schema_org-rb", ENV.fetch("SCHEMA_ORG_VERSION"); require "schema_org"; abort unless SchemaOrg::VERSION'
      environment["SCHEMA_ORG_VERSION"] = spec.version.to_s
      abort "Installed gem smoke check failed" unless system(environment, Gem.ruby, "-e", smoke)
    end
    puts "Package is complete and loadable."
  end
end
