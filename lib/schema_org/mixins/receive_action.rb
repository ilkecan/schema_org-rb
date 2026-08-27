# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module ReceiveAction
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
          sender: {
            schema_name: "sender",
            schema_url: "https://schema.org/sender",
            comment_lines: ["A sub property of participant. The participant who is at the sending end of the action."].freeze,
            ranges: ["Audience", "Organization", "Person"].freeze,
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

      # A sub property of participant. The participant who is at the sending end of the action.
      def sender
        read_property(:sender)
      end

      # A sub property of participant. The participant who is at the sending end of the action.
      def sender=(value)
        write_property(:sender, value)
      end
    end
  end
end
