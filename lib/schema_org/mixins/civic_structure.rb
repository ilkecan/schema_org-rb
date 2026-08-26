module SchemaOrg
  module Mixins
    module CivicStructure
      include Place

      def self.schema_property_definitions
        {
          :opening_hours => {
            schema_name: "openingHours",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def opening_hours
        read_property(:opening_hours)
      end

      def opening_hours=(value)
        write_property(:opening_hours, value)
      end

    end
  end
end
