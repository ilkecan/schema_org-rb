module SchemaOrg
  module Mixins
    module Pharmacy
      include MedicalOrganization

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
