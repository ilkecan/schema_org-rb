# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module GiveAction
      include TransferAction

      def self.schema_property_definitions
        {
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
