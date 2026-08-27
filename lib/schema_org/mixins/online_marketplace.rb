# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module OnlineMarketplace
      include OnlineStore

      def self.schema_property_definitions
        {
          has_store: {
            schema_name: "hasStore",
            schema_url: "https://schema.org/hasStore",
            comment_lines: ["An eCommerce store part of an online marketplace."].freeze,
            ranges: ["OnlineStore"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An eCommerce store part of an online marketplace.
      def has_store
        read_property(:has_store)
      end

      # An eCommerce store part of an online marketplace.
      def has_store=(value)
        write_property(:has_store, value)
      end
    end
  end
end
