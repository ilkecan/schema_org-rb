# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Permit
      include Intangible

      def self.schema_property_definitions
        {
          issued_by: {
            schema_name: "issuedBy",
            schema_url: "https://schema.org/issuedBy",
            comment_lines: ["The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]]."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          issued_through: {
            schema_name: "issuedThrough",
            schema_url: "https://schema.org/issuedThrough",
            comment_lines: ["The service through which the permit was granted."].freeze,
            ranges: ["Service"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          permit_audience: {
            schema_name: "permitAudience",
            schema_url: "https://schema.org/permitAudience",
            comment_lines: ["The target audience for this permit."].freeze,
            ranges: ["Audience"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_for: {
            schema_name: "validFor",
            schema_url: "https://schema.org/validFor",
            comment_lines: ["The duration of validity of a permit or similar thing."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_from: {
            schema_name: "validFrom",
            schema_url: "https://schema.org/validFrom",
            comment_lines: ["The date when the item becomes valid."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_in: {
            schema_name: "validIn",
            schema_url: "https://schema.org/validIn",
            comment_lines: ["The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]]."].freeze,
            ranges: ["AdministrativeArea"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_until: {
            schema_name: "validUntil",
            schema_url: "https://schema.org/validUntil",
            comment_lines: ["The date when the item is no longer valid."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]].
      def issued_by
        read_property(:issued_by)
      end

      # The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]].
      def issued_by=(value)
        write_property(:issued_by, value)
      end

      # The service through which the permit was granted.
      def issued_through
        read_property(:issued_through)
      end

      # The service through which the permit was granted.
      def issued_through=(value)
        write_property(:issued_through, value)
      end

      # The target audience for this permit.
      def permit_audience
        read_property(:permit_audience)
      end

      # The target audience for this permit.
      def permit_audience=(value)
        write_property(:permit_audience, value)
      end

      # The duration of validity of a permit or similar thing.
      def valid_for
        read_property(:valid_for)
      end

      # The duration of validity of a permit or similar thing.
      def valid_for=(value)
        write_property(:valid_for, value)
      end

      # The date when the item becomes valid.
      def valid_from
        read_property(:valid_from)
      end

      # The date when the item becomes valid.
      def valid_from=(value)
        write_property(:valid_from, value)
      end

      # The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]].
      def valid_in
        read_property(:valid_in)
      end

      # The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]].
      def valid_in=(value)
        write_property(:valid_in, value)
      end

      # The date when the item is no longer valid.
      def valid_until
        read_property(:valid_until)
      end

      # The date when the item is no longer valid.
      def valid_until=(value)
        write_property(:valid_until, value)
      end
    end
  end
end
