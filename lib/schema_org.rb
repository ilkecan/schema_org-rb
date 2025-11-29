require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.collapse("#{__dir__}/schema_org/data_types")
loader.collapse("#{__dir__}/schema_org/types")
loader.inflector.inflect('schema_version' => 'SCHEMA_VERSION')
loader.setup

module SchemaOrg
  private_constant :Base
end
