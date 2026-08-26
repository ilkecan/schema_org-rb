# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Ligament
  #
  # A short band of tough, flexible, fibrous connective tissue that functions to connect multiple bones, cartilages, and structurally support joints.
  class Ligament < Base
    include Mixins::Ligament

    SCHEMA_NAME = "Ligament"
    SCHEMA_TYPES = [self, SchemaOrg::AnatomicalStructure, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
