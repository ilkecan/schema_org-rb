module SchemaOrg
  module Mixins
    module FireStation
      include CivicStructure
      include EmergencyService

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
