# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module RentAction
      include TradeAction

      def self.schema_property_definitions
        {
          landlord: {
            schema_name: "landlord",
            schema_url: "https://schema.org/landlord",
            comment_lines: ["A sub property of participant. The owner of the real estate property."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          real_estate_agent: {
            schema_name: "realEstateAgent",
            schema_url: "https://schema.org/realEstateAgent",
            comment_lines: ["A sub property of participant. The real estate agent involved in the action."].freeze,
            ranges: ["RealEstateAgent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of participant. The owner of the real estate property.
      def landlord
        read_property(:landlord)
      end

      # A sub property of participant. The owner of the real estate property.
      def landlord=(value)
        write_property(:landlord, value)
      end

      # A sub property of participant. The real estate agent involved in the action.
      def real_estate_agent
        read_property(:real_estate_agent)
      end

      # A sub property of participant. The real estate agent involved in the action.
      def real_estate_agent=(value)
        write_property(:real_estate_agent, value)
      end
    end
  end
end
