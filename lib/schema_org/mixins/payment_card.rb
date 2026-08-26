module SchemaOrg
  module Mixins
    module PaymentCard
      include FinancialProduct
      include PaymentMethod

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
