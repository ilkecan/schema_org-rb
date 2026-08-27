# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Grant
      include Intangible

      def self.schema_property_definitions
        {
          funded_item: {
            schema_name: "fundedItem",
            schema_url: "https://schema.org/fundedItem",
            comment_lines: ["Indicates something directly or indirectly funded or sponsored through a [[Grant]]. See also [[ownershipFundingInfo]]."].freeze,
            ranges: ["BioChemEntity", "CreativeWork", "Event", "MedicalEntity", "Organization", "Person", "Product"].freeze,
            external_ranges: [].freeze,
            inverse_of: "funding",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          funder: {
            schema_name: "funder",
            schema_url: "https://schema.org/funder",
            comment_lines: ["A person or organization that supports (sponsors) something through some kind of financial contribution."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sponsor: {
            schema_name: "sponsor",
            schema_url: "https://schema.org/sponsor",
            comment_lines: ["A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates something directly or indirectly funded or sponsored through a [[Grant]]. See also [[ownershipFundingInfo]].
      # Inverse-property: `funding`.
      def funded_item
        read_property(:funded_item)
      end

      # Indicates something directly or indirectly funded or sponsored through a [[Grant]]. See also [[ownershipFundingInfo]].
      # Inverse-property: `funding`.
      def funded_item=(value)
        write_property(:funded_item, value)
      end

      # A person or organization that supports (sponsors) something through some kind of financial contribution.
      def funder
        read_property(:funder)
      end

      # A person or organization that supports (sponsors) something through some kind of financial contribution.
      def funder=(value)
        write_property(:funder, value)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor
        read_property(:sponsor)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor=(value)
        write_property(:sponsor, value)
      end
    end
  end
end
