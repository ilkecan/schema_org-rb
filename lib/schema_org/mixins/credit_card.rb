module SchemaOrg
  module Mixins
    module CreditCard
      include LoanOrCredit
      include PaymentCard

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
