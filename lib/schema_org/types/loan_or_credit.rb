# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/LoanOrCredit
  #
  # A financial product for the loaning of an amount of money, or line of credit, under agreed terms and charges.
  class LoanOrCredit < Base
    include Mixins::LoanOrCredit

    SCHEMA_NAME = "LoanOrCredit"
    SCHEMA_TYPES = [self, SchemaOrg::FinancialProduct, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
