module SchemaOrg
  module Mixins
    module Hospital
      include CivicStructure
      include EmergencyService
      include MedicalOrganization

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
