# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Collection
      include CreativeWork

      def self.schema_property_definitions
        {
          collection_size: {
            schema_name: "collectionSize",
            schema_url: "https://schema.org/collectionSize",
            comment_lines: ["The number of items in the [[Collection]]."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The number of items in the [[Collection]].
      def collection_size
        read_property(:collection_size)
      end

      # The number of items in the [[Collection]].
      def collection_size=(value)
        write_property(:collection_size, value)
      end
    end
  end
end
