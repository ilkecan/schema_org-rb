module SchemaOrg
  module Mixins
    module CollegeOrUniversity
      include EducationalOrganization

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
