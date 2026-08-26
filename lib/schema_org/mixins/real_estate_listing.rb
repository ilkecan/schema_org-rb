# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module RealEstateListing
      include WebPage

      def self.schema_property_definitions
        {
          date_posted: {
            schema_name: "datePosted",
            schema_url: "https://schema.org/datePosted",
            comment_lines: ["Publication date of an online listing."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lease_length: {
            schema_name: "leaseLength",
            schema_url: "https://schema.org/leaseLength",
            comment_lines: ["Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Publication date of an online listing.
      def date_posted
        read_property(:date_posted)
      end

      # Publication date of an online listing.
      def date_posted=(value)
        write_property(:date_posted, value)
      end

      # Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property.
      def lease_length
        read_property(:lease_length)
      end

      # Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property.
      def lease_length=(value)
        write_property(:lease_length, value)
      end
    end
  end
end
