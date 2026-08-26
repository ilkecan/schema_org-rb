# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Vessel
  #
  # A component of the human body circulatory system comprised of an intricate network of hollow tubes that transport blood throughout the entire body.
  class Vessel < Base
    include Mixins::Vessel

    SCHEMA_NAME = "Vessel"
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
