# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/InfectiousAgentClass
  #
  # Classes of agents or pathogens that transmit infectious diseases. Enumerated type.
  class InfectiousAgentClass < Base
    include Mixins::InfectiousAgentClass

    SCHEMA_NAME = "InfectiousAgentClass"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    BACTERIA = EnumerationValue.new("Bacteria", [SchemaOrg::InfectiousAgentClass])
    FUNGUS = EnumerationValue.new("Fungus", [SchemaOrg::InfectiousAgentClass])
    MULTICELLULAR_PARASITE = EnumerationValue.new("MulticellularParasite", [SchemaOrg::InfectiousAgentClass])
    PRION = EnumerationValue.new("Prion", [SchemaOrg::InfectiousAgentClass])
    PROTOZOA = EnumerationValue.new("Protozoa", [SchemaOrg::InfectiousAgentClass])
    VIRUS = EnumerationValue.new("Virus", [SchemaOrg::InfectiousAgentClass])
    VALUES = [BACTERIA, FUNGUS, MULTICELLULAR_PARASITE, PRION, PROTOZOA, VIRUS].freeze

    def self.values
      VALUES
    end
  end
end
