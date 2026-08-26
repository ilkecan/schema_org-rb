module SchemaOrg
  module Mixins
    module ReadAction
      include ConsumeAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
