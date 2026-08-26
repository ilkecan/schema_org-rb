module SchemaOrg
  module Mixins
    module Physician
      include MedicalOrganization

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
