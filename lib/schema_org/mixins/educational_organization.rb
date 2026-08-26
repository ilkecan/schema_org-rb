module SchemaOrg
  module Mixins
    module EducationalOrganization
      include CivicStructure
      include Organization

      def self.schema_property_definitions
        {
          :alumni => {
            schema_name: "alumni",
            ranges: ["Person"],
          }.freeze,
        }.freeze
      end

      def alumni
        read_property(:alumni)
      end

      def alumni=(value)
        write_property(:alumni, value)
      end

    end
  end
end
