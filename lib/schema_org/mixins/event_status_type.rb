module SchemaOrg
  module Mixins
    module EventStatusType
      include StatusEnumeration

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
