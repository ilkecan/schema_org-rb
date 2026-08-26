# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ProductCollection
      include Collection
      include Product

      def self.schema_property_definitions
        {
          includes_object: {
            schema_name: "includesObject",
            schema_url: "https://schema.org/includesObject",
            comment_lines: ["This links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]]."].freeze,
            ranges: ["TypeAndQuantityNode"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # This links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]].
      def includes_object
        read_property(:includes_object)
      end

      # This links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]].
      def includes_object=(value)
        write_property(:includes_object, value)
      end
    end
  end
end
