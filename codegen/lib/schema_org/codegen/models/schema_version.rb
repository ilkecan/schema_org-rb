module SchemaOrg
  module Codegen
    module Models
      class SchemaVersion < Base
        attribute :schema_version, Types::Coercible::Symbol

        def self.current
          pn = Pathname.new('./codegen/data/SCHEMA_VERSION.txt')
          schema_version = pn.read.delete_suffix! '-release'
          new(schema_version:)
        end
      end
    end
  end
end
