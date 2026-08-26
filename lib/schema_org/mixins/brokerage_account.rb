# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module BrokerageAccount
      include InvestmentOrDeposit

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
