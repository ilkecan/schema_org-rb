# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Quotation
      include CreativeWork

      def self.schema_property_definitions
        {
          spoken_by_character: {
            schema_name: "spokenByCharacter",
            schema_url: "https://schema.org/spokenByCharacter",
            comment_lines: ["The (e.g. fictional) character, Person or Organization to whom the quotation is attributed within the containing CreativeWork."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The (e.g. fictional) character, Person or Organization to whom the quotation is attributed within the containing CreativeWork.
      def spoken_by_character
        read_property(:spoken_by_character)
      end

      # The (e.g. fictional) character, Person or Organization to whom the quotation is attributed within the containing CreativeWork.
      def spoken_by_character=(value)
        write_property(:spoken_by_character, value)
      end
    end
  end
end
