module SchemaOrg
  # https://schema.org/InvestmentOrDeposit
  #
  # A type of financial product that typically requires the client to transfer funds to a financial service in return for potential beneficial financial return.
  class InvestmentOrDeposit < Base
    include Mixins::InvestmentOrDeposit
    SCHEMA_TYPES = [self, SchemaOrg::FinancialProduct, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
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
