# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MemberProgram
      include Intangible

      def self.schema_property_definitions
        {
          has_tiers: {
            schema_name: "hasTiers",
            schema_url: "https://schema.org/hasTiers",
            comment_lines: ["The tiers of a member program."].freeze,
            ranges: ["MemberProgramTier"].freeze,
            external_ranges: [].freeze,
            inverse_of: "isTierOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          hosting_organization: {
            schema_name: "hostingOrganization",
            schema_url: "https://schema.org/hostingOrganization",
            comment_lines: ["The Organization (airline, travelers' club, retailer, etc.) the membership is made with or which offers the  MemberProgram."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The tiers of a member program.
      # Inverse-property: `isTierOf`.
      def has_tiers
        read_property(:has_tiers)
      end

      # The tiers of a member program.
      # Inverse-property: `isTierOf`.
      def has_tiers=(value)
        write_property(:has_tiers, value)
      end

      # The Organization (airline, travelers' club, retailer, etc.) the membership is made with or which offers the  MemberProgram.
      def hosting_organization
        read_property(:hosting_organization)
      end

      # The Organization (airline, travelers' club, retailer, etc.) the membership is made with or which offers the  MemberProgram.
      def hosting_organization=(value)
        write_property(:hosting_organization, value)
      end
    end
  end
end
