# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MaximumDoseSchedule
  #
  # The maximum dosing schedule considered safe for a drug or supplement as recommended by an authority or by the drug/supplement's manufacturer. Capture the recommending authority in the recognizingAuthority property of MedicalEntity.
  class MaximumDoseSchedule < Base
    include Mixins::MaximumDoseSchedule

    SCHEMA_NAME = "MaximumDoseSchedule"
    SCHEMA_TYPES = [self, SchemaOrg::DoseSchedule, SchemaOrg::MedicalIntangible, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
