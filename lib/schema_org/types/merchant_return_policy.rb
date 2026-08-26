# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MerchantReturnPolicy
  #
  # NOTE: Supersedes `ProductReturnPolicy`.
  #
  # A MerchantReturnPolicy provides information about product return policies associated with an [[Organization]], [[Product]], or [[Offer]].
  class MerchantReturnPolicy < Base
    include Mixins::MerchantReturnPolicy

    SCHEMA_NAME = "MerchantReturnPolicy"
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
