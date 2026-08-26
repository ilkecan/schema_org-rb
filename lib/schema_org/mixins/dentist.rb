module SchemaOrg
  module Mixins
    module Dentist
      include LocalBusiness
      include MedicalOrganization

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
