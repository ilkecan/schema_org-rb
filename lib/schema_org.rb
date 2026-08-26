require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.collapse("#{__dir__}/schema_org/types")
loader.inflector.inflect("schema_version" => "SCHEMA_VERSION", "url" => "URL", "date_time" => "DateTime")
loader.setup
require_relative "schema_org/base"

module SchemaOrg
  CONTEXT = "https://schema.org".freeze
  private_constant :Base, :EnumerationValue
end
