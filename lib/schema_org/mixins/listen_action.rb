module SchemaOrg
  module Mixins
    module ListenAction
      include ConsumeAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
