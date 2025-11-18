require 'dry/inflector'

module SchemaOrg
  module Codegen
    INFLECTOR = Dry::Inflector.new

    autoload :Generator, './codegen/lib/schema_org/codegen/generator'
    autoload :Parser, './codegen/lib/schema_org/codegen/parser'
    autoload :Subject, './codegen/lib/schema_org/codegen/subject'
  end
end
