module SchemaOrg
  module Mixins
    module BedDetails
      include Intangible

      def self.schema_property_definitions
        {
          :number_of_beds => {
            schema_name: "numberOfBeds",
            ranges: ["Number"],
          }.freeze,
          :type_of_bed => {
            schema_name: "typeOfBed",
            ranges: ["BedType", "Text"],
          }.freeze,
        }.freeze
      end

      def number_of_beds
        read_property(:number_of_beds)
      end

      def number_of_beds=(value)
        write_property(:number_of_beds, value)
      end

      def type_of_bed
        read_property(:type_of_bed)
      end

      def type_of_bed=(value)
        write_property(:type_of_bed, value)
      end

    end
  end
end
