module SchemaOrg
  module Codegen
    module Models
      class Mixin
        attr_reader :name, :parents, :properties

        def initialize(name:, parents:, properties:)
          @name = name
          @parents = parents.freeze
          @properties = properties.freeze
        end
      end
    end
  end
end
