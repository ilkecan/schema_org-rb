# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/EnergyEfficiencyEnumeration
  #
  # Enumerates energy efficiency levels (also known as "classes" or "ratings") and certifications that are part of several international energy efficiency standards.
  class EnergyEfficiencyEnumeration < Base
    include Mixins::EnergyEfficiencyEnumeration

    SCHEMA_NAME = "EnergyEfficiencyEnumeration"
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
  end
end
