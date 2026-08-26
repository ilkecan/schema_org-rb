module SchemaOrg
  module Mixins
    module PrependAction
      include InsertAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
