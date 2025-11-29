module SchemaOrg
  module Codegen
    module Models
      class Mixin < Base
        attribute :name, Types::Coercible::Symbol
        attribute :parents, Types::Array.of(Types::Coercible::Symbol)
        attribute :properties, Types::Array.of(Property)
      end
    end
  end
end
