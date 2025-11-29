module SchemaOrg
  module Codegen
    module Models
      class Property < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :name, Types::Coercible::Symbol
        attribute :types, Types::Array.of(Types::Coercible::Symbol)
      end
    end
  end
end
