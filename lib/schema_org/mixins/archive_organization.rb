# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ArchiveOrganization
      include LocalBusiness

      def self.schema_property_definitions
        {
          archive_held: {
            schema_name: "archiveHeld",
            schema_url: "https://schema.org/archiveHeld",
            comment_lines: ["Collection, [fonds](https://en.wikipedia.org/wiki/Fonds), or item held, kept or maintained by an [[ArchiveOrganization]]."].freeze,
            ranges: ["ArchiveComponent"].freeze,
            external_ranges: [].freeze,
            inverse_of: "holdingArchive",
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Collection, [fonds](https://en.wikipedia.org/wiki/Fonds), or item held, kept or maintained by an [[ArchiveOrganization]].
      # Inverse-property: `holdingArchive`.
      def archive_held
        read_property(:archive_held)
      end

      # Collection, [fonds](https://en.wikipedia.org/wiki/Fonds), or item held, kept or maintained by an [[ArchiveOrganization]].
      # Inverse-property: `holdingArchive`.
      def archive_held=(value)
        write_property(:archive_held, value)
      end
    end
  end
end
