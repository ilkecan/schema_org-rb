module SchemaOrg
  module Codegen
    module Models
      class Type < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :name, Types::Coercible::Symbol
        attribute :url, Types::Coercible::String
      end
    end
  end
end
