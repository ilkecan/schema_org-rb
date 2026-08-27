# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/AdultOrientedEnumeration
  #
  # Enumeration of considerations that make a product relevant or potentially restricted for adults only.
  class AdultOrientedEnumeration < Base
    include Mixins::AdultOrientedEnumeration

    SCHEMA_NAME = "AdultOrientedEnumeration"
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
    ALCOHOL_CONSIDERATION = EnumerationValue.new("AlcoholConsideration", [SchemaOrg::AdultOrientedEnumeration])
    DANGEROUS_GOOD_CONSIDERATION = EnumerationValue.new("DangerousGoodConsideration", [SchemaOrg::AdultOrientedEnumeration])
    HEALTHCARE_CONSIDERATION = EnumerationValue.new("HealthcareConsideration", [SchemaOrg::AdultOrientedEnumeration])
    NARCOTIC_CONSIDERATION = EnumerationValue.new("NarcoticConsideration", [SchemaOrg::AdultOrientedEnumeration])
    REDUCED_RELEVANCE_FOR_CHILDREN_CONSIDERATION = EnumerationValue.new("ReducedRelevanceForChildrenConsideration", [SchemaOrg::AdultOrientedEnumeration])
    SEXUAL_CONTENT_CONSIDERATION = EnumerationValue.new("SexualContentConsideration", [SchemaOrg::AdultOrientedEnumeration])
    TOBACCO_NICOTINE_CONSIDERATION = EnumerationValue.new("TobaccoNicotineConsideration", [SchemaOrg::AdultOrientedEnumeration])
    UNCLASSIFIED_ADULT_CONSIDERATION = EnumerationValue.new("UnclassifiedAdultConsideration", [SchemaOrg::AdultOrientedEnumeration])
    VIOLENCE_CONSIDERATION = EnumerationValue.new("ViolenceConsideration", [SchemaOrg::AdultOrientedEnumeration])
    WEAPON_CONSIDERATION = EnumerationValue.new("WeaponConsideration", [SchemaOrg::AdultOrientedEnumeration])
    VALUES = [ALCOHOL_CONSIDERATION, DANGEROUS_GOOD_CONSIDERATION, HEALTHCARE_CONSIDERATION, NARCOTIC_CONSIDERATION, REDUCED_RELEVANCE_FOR_CHILDREN_CONSIDERATION, SEXUAL_CONTENT_CONSIDERATION, TOBACCO_NICOTINE_CONSIDERATION, UNCLASSIFIED_ADULT_CONSIDERATION, VIOLENCE_CONSIDERATION, WEAPON_CONSIDERATION].freeze

    def self.values
      VALUES
    end
  end
end
