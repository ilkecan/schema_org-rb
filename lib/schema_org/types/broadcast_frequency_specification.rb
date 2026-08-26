# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/BroadcastFrequencySpecification
  #
  # The frequency in MHz and the modulation used for a particular BroadcastService.
  class BroadcastFrequencySpecification < Base
    include Mixins::BroadcastFrequencySpecification

    SCHEMA_NAME = "BroadcastFrequencySpecification"
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
