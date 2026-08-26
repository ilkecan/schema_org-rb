# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module BodyMeasurementTypeEnumeration
      include MeasurementTypeEnumeration

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
