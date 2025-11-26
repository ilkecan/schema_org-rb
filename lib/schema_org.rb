require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.collapse("#{__dir__}/schema_org/types")
loader.inflector.inflect('schema_version' => 'SCHEMA_VERSION')
loader.setup

module SchemaOrg
  module Types
  end

  private_constant :Types
end
