# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Artery
  #
  # A type of blood vessel that specifically carries blood away from the heart.
  class Artery < Base
    include Mixins::Artery

    SCHEMA_NAME = "Artery"
    SCHEMA_TYPES = [self, SchemaOrg::Vessel, SchemaOrg::AnatomicalStructure, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
