module SchemaOrg
  module Mixins
    module Airline
      include Organization

      def self.schema_property_definitions
        {
          :boarding_policy => {
            schema_name: "boardingPolicy",
            ranges: ["BoardingPolicyType"],
          }.freeze,
          :iata_code => {
            schema_name: "iataCode",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def boarding_policy
        read_property(:boarding_policy)
      end

      def boarding_policy=(value)
        write_property(:boarding_policy, value)
      end

      def iata_code
        read_property(:iata_code)
      end

      def iata_code=(value)
        write_property(:iata_code, value)
      end

    end
  end
end
