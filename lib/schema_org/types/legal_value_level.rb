# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/LegalValueLevel
  #
  # A list of possible levels for the legal validity of a legislation.
  class LegalValueLevel < Base
    include Mixins::LegalValueLevel

    SCHEMA_NAME = "LegalValueLevel"
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
    AUTHORITATIVE_LEGAL_VALUE = EnumerationValue.new("AuthoritativeLegalValue", [SchemaOrg::LegalValueLevel])
    DEFINITIVE_LEGAL_VALUE = EnumerationValue.new("DefinitiveLegalValue", [SchemaOrg::LegalValueLevel])
    OFFICIAL_LEGAL_VALUE = EnumerationValue.new("OfficialLegalValue", [SchemaOrg::LegalValueLevel])
    UNOFFICIAL_LEGAL_VALUE = EnumerationValue.new("UnofficialLegalValue", [SchemaOrg::LegalValueLevel])
    VALUES = [AUTHORITATIVE_LEGAL_VALUE, DEFINITIVE_LEGAL_VALUE, OFFICIAL_LEGAL_VALUE, UNOFFICIAL_LEGAL_VALUE].freeze

    def self.values
      VALUES
    end
  end
end
