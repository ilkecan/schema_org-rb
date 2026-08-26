# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module FinancialService
      include LocalBusiness

      def self.schema_property_definitions
        {
          fees_and_commissions_specification: {
            schema_name: "feesAndCommissionsSpecification",
            schema_url: "https://schema.org/feesAndCommissionsSpecification",
            comment_lines: ["Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization.
      def fees_and_commissions_specification
        read_property(:fees_and_commissions_specification)
      end

      # Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization.
      def fees_and_commissions_specification=(value)
        write_property(:fees_and_commissions_specification, value)
      end
    end
  end
end
