# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Substance
  #
  # Any matter of defined composition that has discrete existence, whose origin may be biological, mineral or chemical.
  class Substance < Base
    include Mixins::Substance

    SCHEMA_NAME = "Substance"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
