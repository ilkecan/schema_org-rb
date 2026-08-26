module SchemaOrg
  module Mixins
    module BroadcastFrequencySpecification
      include Intangible

      def self.schema_property_definitions
        {
          :broadcast_frequency_value => {
            schema_name: "broadcastFrequencyValue",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def broadcast_frequency_value
        read_property(:broadcast_frequency_value)
      end

      def broadcast_frequency_value=(value)
        write_property(:broadcast_frequency_value, value)
      end

    end
  end
end
