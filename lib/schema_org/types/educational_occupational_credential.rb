# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/EducationalOccupationalCredential
  #
  # An educational or occupational credential. A diploma, academic degree, certification, qualification, badge, etc., that may be awarded to a person or other entity that meets the requirements defined by the credentialer.
  class EducationalOccupationalCredential < Base
    include Mixins::EducationalOccupationalCredential

    SCHEMA_NAME = "EducationalOccupationalCredential"
    SCHEMA_TYPES = [self, SchemaOrg::Credential, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
