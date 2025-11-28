module SchemaOrg
  module Codegen
    module Models
      class DataType < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :name, Types::Coercible::Symbol
        attribute :parent, Types::Coercible::Symbol.optional
        attribute :url, Types::Coercible::String
      end
    end
  end
end
