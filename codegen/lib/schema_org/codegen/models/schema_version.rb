module SchemaOrg
  module Codegen
    module Models
      class SchemaVersion < Base
        attribute :schema_version, Types::Coercible::Symbol
      end
    end
  end
end
