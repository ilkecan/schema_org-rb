# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ProductReturnPolicy
      include Intangible

      def self.schema_property_definitions
        {
          product_return_days: {
            schema_name: "productReturnDays",
            schema_url: "https://schema.org/productReturnDays",
            comment_lines: ["The productReturnDays property indicates the number of days (from purchase) within which relevant product return policy is applicable."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "merchantReturnDays",
            supersedes: nil
          }.freeze,
          product_return_link: {
            schema_name: "productReturnLink",
            schema_url: "https://schema.org/productReturnLink",
            comment_lines: ["Indicates a Web page or service by URL, for product return."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "merchantReturnLink",
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The productReturnDays property indicates the number of days (from purchase) within which relevant product return policy is applicable.
      # Superseded by `merchantReturnDays`.
      def product_return_days
        read_property(:product_return_days)
      end

      # The productReturnDays property indicates the number of days (from purchase) within which relevant product return policy is applicable.
      # Superseded by `merchantReturnDays`.
      def product_return_days=(value)
        write_property(:product_return_days, value)
      end

      # Indicates a Web page or service by URL, for product return.
      # Superseded by `merchantReturnLink`.
      def product_return_link
        read_property(:product_return_link)
      end

      # Indicates a Web page or service by URL, for product return.
      # Superseded by `merchantReturnLink`.
      def product_return_link=(value)
        write_property(:product_return_link, value)
      end
    end
  end
end
