# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/NLNonprofitType
  #
  # NLNonprofitType: Non-profit organization type originating from the Netherlands.
  class NLNonprofitType < Base
    include Mixins::NLNonprofitType

    SCHEMA_NAME = "NLNonprofitType"
    SCHEMA_TYPES = [self, SchemaOrg::NonprofitType, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    NONPROFIT_ANBI = EnumerationValue.new("NonprofitANBI", [SchemaOrg::NLNonprofitType])
    NONPROFIT_SBBI = EnumerationValue.new("NonprofitSBBI", [SchemaOrg::NLNonprofitType])
    VALUES = [NONPROFIT_ANBI, NONPROFIT_SBBI].freeze

    def self.values
      VALUES
    end
  end
end
