module SchemaOrg
  module Mixins
    module UseAction
      include ConsumeAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
