# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module OnlineStore
      include OnlineBusiness

      def self.schema_property_definitions
        {
          is_store_on: {
            schema_name: "isStoreOn",
            schema_url: "https://schema.org/isStoreOn",
            comment_lines: ["The eCommerce marketplace this online store is on."].freeze,
            ranges: ["OnlineMarketplace"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The eCommerce marketplace this online store is on.
      def is_store_on
        read_property(:is_store_on)
      end

      # The eCommerce marketplace this online store is on.
      def is_store_on=(value)
        write_property(:is_store_on, value)
      end
    end
  end
end
