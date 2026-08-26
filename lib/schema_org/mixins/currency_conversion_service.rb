module SchemaOrg
  module Mixins
    module CurrencyConversionService
      include FinancialProduct

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
