# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/SteeringPositionValue
  #
  # A value indicating a steering position.
  class SteeringPositionValue < Base
    include Mixins::SteeringPositionValue

    SCHEMA_NAME = "SteeringPositionValue"
    SCHEMA_TYPES = [self, SchemaOrg::QualitativeValue, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    LEFT_HAND_DRIVING = EnumerationValue.new("LeftHandDriving", [SchemaOrg::SteeringPositionValue])
    RIGHT_HAND_DRIVING = EnumerationValue.new("RightHandDriving", [SchemaOrg::SteeringPositionValue])
    VALUES = [LEFT_HAND_DRIVING, RIGHT_HAND_DRIVING].freeze

    def self.values
      VALUES
    end
  end
end
