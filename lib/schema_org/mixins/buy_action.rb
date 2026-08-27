# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module BuyAction
      include TradeAction

      def self.schema_property_definitions
        {
          seller: {
            schema_name: "seller",
            schema_url: "https://schema.org/seller",
            comment_lines: ["An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "vendor"
          }.freeze,
          vendor: {
            schema_name: "vendor",
            schema_url: "https://schema.org/vendor",
            comment_lines: ["'vendor' is an earlier term for 'seller'."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "seller",
            supersedes: nil
          }.freeze,
          warranty_promise: {
            schema_name: "warrantyPromise",
            schema_url: "https://schema.org/warrantyPromise",
            comment_lines: ["The warranty promise(s) included in the offer."].freeze,
            ranges: ["WarrantyPromise"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "warranty",
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      # Supersedes `vendor`.
      def seller
        read_property(:seller)
      end

      # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      # Supersedes `vendor`.
      def seller=(value)
        write_property(:seller, value)
      end

      # 'vendor' is an earlier term for 'seller'.
      # Superseded by `seller`.
      def vendor
        read_property(:vendor)
      end

      # 'vendor' is an earlier term for 'seller'.
      # Superseded by `seller`.
      def vendor=(value)
        write_property(:vendor, value)
      end

      # The warranty promise(s) included in the offer.
      # Superseded by `warranty`.
      def warranty_promise
        read_property(:warranty_promise)
      end

      # The warranty promise(s) included in the offer.
      # Superseded by `warranty`.
      def warranty_promise=(value)
        write_property(:warranty_promise, value)
      end
    end
  end
end
