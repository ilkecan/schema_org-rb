module SchemaOrg
  module Codegen
    module Models
      class SchemaVersion
        attr_reader :schema_version

        def initialize(schema_version:)
          @schema_version = schema_version
        end

        def self.current
          schema_version = Pathname.new('./codegen/data/SCHEMA_VERSION.txt').read.strip.delete_suffix('-release')
          new(schema_version:)
        end
      end
    end
  end
end
