# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/PaymentService
  #
  # A Service to transfer funds from a person or organization to a beneficiary person or organization.
  class PaymentService < Base
    include Mixins::PaymentService

    SCHEMA_NAME = "PaymentService"
    SCHEMA_TYPES = [self, SchemaOrg::FinancialProduct, SchemaOrg::PaymentMethod, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
