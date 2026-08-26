# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SendAction
      include TransferAction

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
          }.freeze,
          recipient: {
            schema_name: "recipient",
            schema_url: "https://schema.org/recipient",
            comment_lines: ["A sub property of participant. The participant who is at the receiving end of the action."].freeze,
            ranges: ["Audience", "ContactPoint", "Organization", "Person"].freeze,
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

      # A sub property of participant. The participant who is at the receiving end of the action.
      def recipient
        read_property(:recipient)
      end

      # A sub property of participant. The participant who is at the receiving end of the action.
      def recipient=(value)
        write_property(:recipient, value)
      end
    end
  end
end
