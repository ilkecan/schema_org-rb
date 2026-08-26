require "dry-struct"

module SchemaOrg
  module Codegen
    module Models
      class Base < Dry::Struct
        schema schema.strict
      end
    end
  end
end
