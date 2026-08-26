module SchemaOrg
  module Mixins
    module AppendAction
      include InsertAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
