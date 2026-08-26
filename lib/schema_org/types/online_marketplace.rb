# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/OnlineMarketplace
  #
  # An eCommerce marketplace.
  class OnlineMarketplace < Base
    include Mixins::OnlineMarketplace

    SCHEMA_NAME = "OnlineMarketplace"
    SCHEMA_TYPES = [self, SchemaOrg::OnlineStore, SchemaOrg::OnlineBusiness, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
