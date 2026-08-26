module SchemaOrg
  module Mixins
    module BankAccount
      include FinancialProduct

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
