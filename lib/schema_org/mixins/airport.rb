module SchemaOrg
  module Mixins
    module Airport
      include CivicStructure

      def self.schema_property_definitions
        {
          :iata_code => {
            schema_name: "iataCode",
            ranges: ["Text"],
          }.freeze,
          :icao_code => {
            schema_name: "icaoCode",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def iata_code
        read_property(:iata_code)
      end

      def iata_code=(value)
        write_property(:iata_code, value)
      end

      def icao_code
        read_property(:icao_code)
      end

      def icao_code=(value)
        write_property(:icao_code, value)
      end

    end
  end
end
