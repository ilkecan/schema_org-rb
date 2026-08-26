# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/FinancialProduct
  #
  # A product provided to consumers and businesses by financial institutions such as banks, insurance companies, brokerage firms, consumer finance companies, and investment companies which comprise the financial services industry.
  class FinancialProduct < Base
    include Mixins::FinancialProduct

    SCHEMA_NAME = "FinancialProduct"
    SCHEMA_TYPES = [self, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
  end
end
