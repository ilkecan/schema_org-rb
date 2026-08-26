module SchemaOrg
  module Mixins
    module RentAction
      include TradeAction

      def self.schema_property_definitions
        {
          :landlord => {
            schema_name: "landlord",
            ranges: ["Organization", "Person"],
          }.freeze,
          :real_estate_agent => {
            schema_name: "realEstateAgent",
            ranges: ["RealEstateAgent"],
          }.freeze,
        }.freeze
      end

      def landlord
        read_property(:landlord)
      end

      def landlord=(value)
        write_property(:landlord, value)
      end

      def real_estate_agent
        read_property(:real_estate_agent)
      end

      def real_estate_agent=(value)
        write_property(:real_estate_agent, value)
      end

    end
  end
end
