# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/MeasurementMethodEnum
  #
  # Enumeration(s) for use with [[measurementMethod]].
  class MeasurementMethodEnum < Base
    include Mixins::MeasurementMethodEnum

    SCHEMA_NAME = "MeasurementMethodEnum"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    EXAMPLE_MEASUREMENT_METHOD_ENUM = EnumerationValue.new("ExampleMeasurementMethodEnum", [SchemaOrg::MeasurementMethodEnum])
    VALUES = [EXAMPLE_MEASUREMENT_METHOD_ENUM].freeze

    def self.values
      VALUES
    end
  end
end
