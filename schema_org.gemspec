# frozen_string_literal: true

require_relative "lib/schema_org/version"

Gem::Specification.new do |spec|
  spec.name = "schema_org-rb"
  spec.version = SchemaOrg::VERSION
  spec.authors = ["ilkecan"]
  spec.email = ["ilkecan@protonmail.com"]
  spec.summary = "Ruby objects for schema.org"
  spec.description = "Generated schema.org type descriptors with checked properties and JSON-LD serialization."
  spec.homepage = "https://github.com/ilkecan/schema_org-rb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2"
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.files = Dir["lib/**/*.rb"] + Dir["sig/**/*.rbs"] + %w[LICENSE.txt README.md CHANGELOG.md]
  spec.require_paths = ["lib"]
  spec.add_dependency "zeitwerk", "~> 2.7"
end
