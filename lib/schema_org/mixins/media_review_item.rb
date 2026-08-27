# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MediaReviewItem
      include CreativeWork

      def self.schema_property_definitions
        {
          media_item_appearance: {
            schema_name: "mediaItemAppearance",
            schema_url: "https://schema.org/mediaItemAppearance",
            comment_lines: ["In the context of a [[MediaReview]], indicates specific media item(s) that are grouped using a [[MediaReviewItem]]."].freeze,
            ranges: ["MediaObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # In the context of a [[MediaReview]], indicates specific media item(s) that are grouped using a [[MediaReviewItem]].
      def media_item_appearance
        read_property(:media_item_appearance)
      end

      # In the context of a [[MediaReview]], indicates specific media item(s) that are grouped using a [[MediaReviewItem]].
      def media_item_appearance=(value)
        write_property(:media_item_appearance, value)
      end
    end
  end
end
