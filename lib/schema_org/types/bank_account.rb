module SchemaOrg
  # https://schema.org/BankAccount
  #
  # A product or service offered by a bank whereby one may deposit, withdraw or transfer money and in some cases be paid interest.
  class BankAccount < Base
    include Mixins::BankAccount
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
