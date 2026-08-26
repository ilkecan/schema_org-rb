require "zeitwerk"
require_relative "schema_org/generated_vocabulary"

loader = Zeitwerk::Loader.for_gem
loader.collapse("#{__dir__}/schema_org/types")
loader.inflector.inflect(SchemaOrg::GeneratedVocabulary.inflections)
loader.setup
require_relative "schema_org/base"

module SchemaOrg
  CONTEXT = "https://schema.org".freeze
  private_constant :Base, :EnumerationValue
end
