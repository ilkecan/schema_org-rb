# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module OrderAction
      include TradeAction

      def self.schema_property_definitions
        {
          delivery_method: {
            schema_name: "deliveryMethod",
            schema_url: "https://schema.org/deliveryMethod",
            comment_lines: ["A sub property of instrument. The method of delivery."].freeze,
            ranges: ["DeliveryMethod"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of instrument. The method of delivery.
      def delivery_method
        read_property(:delivery_method)
      end

      # A sub property of instrument. The method of delivery.
      def delivery_method=(value)
        write_property(:delivery_method, value)
      end
    end
  end
end
