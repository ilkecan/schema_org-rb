require 'dry-types'
require 'dry/inflector'

module SchemaOrg
  module Codegen
    INFLECTOR = Dry::Inflector.new

    module Types
      include Dry.Types()
    end
  end
end
