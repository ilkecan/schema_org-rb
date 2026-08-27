# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module ArchiveComponent
      include CreativeWork

      def self.schema_property_definitions
        {
          holding_archive: {
            schema_name: "holdingArchive",
            schema_url: "https://schema.org/holdingArchive",
            comment_lines: ["[[ArchiveOrganization]] that holds, keeps or maintains the [[ArchiveComponent]]."].freeze,
            ranges: ["ArchiveOrganization"].freeze,
            external_ranges: [].freeze,
            inverse_of: "archiveHeld",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_location: {
            schema_name: "itemLocation",
            schema_url: "https://schema.org/itemLocation",
            comment_lines: ["Current location of the item."].freeze,
            ranges: ["Place", "PostalAddress", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # [[ArchiveOrganization]] that holds, keeps or maintains the [[ArchiveComponent]].
      # Inverse-property: `archiveHeld`.
      def holding_archive
        read_property(:holding_archive)
      end

      # [[ArchiveOrganization]] that holds, keeps or maintains the [[ArchiveComponent]].
      # Inverse-property: `archiveHeld`.
      def holding_archive=(value)
        write_property(:holding_archive, value)
      end

      # Current location of the item.
      def item_location
        read_property(:item_location)
      end

      # Current location of the item.
      def item_location=(value)
        write_property(:item_location, value)
      end
    end
  end
end
