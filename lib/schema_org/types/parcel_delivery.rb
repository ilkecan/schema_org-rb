# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ParcelDelivery
  #
  # The delivery of a parcel either via the postal service or a commercial service.
  class ParcelDelivery < Base
    include Mixins::ParcelDelivery

    SCHEMA_NAME = "ParcelDelivery"
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
