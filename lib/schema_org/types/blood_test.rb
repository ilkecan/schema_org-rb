# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/BloodTest
  #
  # A medical test performed on a sample of a patient's blood.
  class BloodTest < Base
    include Mixins::BloodTest

    SCHEMA_NAME = "BloodTest"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalTest, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
