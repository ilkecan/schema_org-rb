# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/WearableSizeGroupEnumeration
  #
  # Enumerates common size groups (also known as "size types") for wearable products.
  class WearableSizeGroupEnumeration < Base
    include Mixins::WearableSizeGroupEnumeration

    SCHEMA_NAME = "WearableSizeGroupEnumeration"
    SCHEMA_TYPES = [self, SchemaOrg::SizeGroupEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    WEARABLE_SIZE_GROUP_BIG = EnumerationValue.new("WearableSizeGroupBig", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_BOYS = EnumerationValue.new("WearableSizeGroupBoys", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_EXTRA_SHORT = EnumerationValue.new("WearableSizeGroupExtraShort", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_EXTRA_TALL = EnumerationValue.new("WearableSizeGroupExtraTall", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_GIRLS = EnumerationValue.new("WearableSizeGroupGirls", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_HUSKY = EnumerationValue.new("WearableSizeGroupHusky", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_INFANTS = EnumerationValue.new("WearableSizeGroupInfants", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_JUNIORS = EnumerationValue.new("WearableSizeGroupJuniors", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_MATERNITY = EnumerationValue.new("WearableSizeGroupMaternity", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_MENS = EnumerationValue.new("WearableSizeGroupMens", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_MISSES = EnumerationValue.new("WearableSizeGroupMisses", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_PETITE = EnumerationValue.new("WearableSizeGroupPetite", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_PLUS = EnumerationValue.new("WearableSizeGroupPlus", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_REGULAR = EnumerationValue.new("WearableSizeGroupRegular", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_SHORT = EnumerationValue.new("WearableSizeGroupShort", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_TALL = EnumerationValue.new("WearableSizeGroupTall", [SchemaOrg::WearableSizeGroupEnumeration])
    WEARABLE_SIZE_GROUP_WOMENS = EnumerationValue.new("WearableSizeGroupWomens", [SchemaOrg::WearableSizeGroupEnumeration])
    VALUES = [WEARABLE_SIZE_GROUP_BIG, WEARABLE_SIZE_GROUP_BOYS, WEARABLE_SIZE_GROUP_EXTRA_SHORT, WEARABLE_SIZE_GROUP_EXTRA_TALL, WEARABLE_SIZE_GROUP_GIRLS, WEARABLE_SIZE_GROUP_HUSKY, WEARABLE_SIZE_GROUP_INFANTS, WEARABLE_SIZE_GROUP_JUNIORS, WEARABLE_SIZE_GROUP_MATERNITY, WEARABLE_SIZE_GROUP_MENS, WEARABLE_SIZE_GROUP_MISSES, WEARABLE_SIZE_GROUP_PETITE, WEARABLE_SIZE_GROUP_PLUS, WEARABLE_SIZE_GROUP_REGULAR, WEARABLE_SIZE_GROUP_SHORT, WEARABLE_SIZE_GROUP_TALL, WEARABLE_SIZE_GROUP_WOMENS].freeze

    def self.values
      VALUES
    end
  end
end
