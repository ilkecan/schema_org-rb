# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RestrictedDiet
  #
  # A diet restricted to certain foods or preparations for cultural, religious, health or lifestyle reasons.
  class RestrictedDiet < Base
    include Mixins::RestrictedDiet

    SCHEMA_NAME = "RestrictedDiet"
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
    DIABETIC_DIET = EnumerationValue.new("DiabeticDiet", [SchemaOrg::RestrictedDiet])
    GLUTEN_FREE_DIET = EnumerationValue.new("GlutenFreeDiet", [SchemaOrg::RestrictedDiet])
    HALAL_DIET = EnumerationValue.new("HalalDiet", [SchemaOrg::RestrictedDiet])
    HINDU_DIET = EnumerationValue.new("HinduDiet", [SchemaOrg::RestrictedDiet])
    KOSHER_DIET = EnumerationValue.new("KosherDiet", [SchemaOrg::RestrictedDiet])
    LOW_CALORIE_DIET = EnumerationValue.new("LowCalorieDiet", [SchemaOrg::RestrictedDiet])
    LOW_FAT_DIET = EnumerationValue.new("LowFatDiet", [SchemaOrg::RestrictedDiet])
    LOW_LACTOSE_DIET = EnumerationValue.new("LowLactoseDiet", [SchemaOrg::RestrictedDiet])
    LOW_SALT_DIET = EnumerationValue.new("LowSaltDiet", [SchemaOrg::RestrictedDiet])
    VEGAN_DIET = EnumerationValue.new("VeganDiet", [SchemaOrg::RestrictedDiet])
    VEGETARIAN_DIET = EnumerationValue.new("VegetarianDiet", [SchemaOrg::RestrictedDiet])
    VALUES = [DIABETIC_DIET, GLUTEN_FREE_DIET, HALAL_DIET, HINDU_DIET, KOSHER_DIET, LOW_CALORIE_DIET, LOW_FAT_DIET, LOW_LACTOSE_DIET, LOW_SALT_DIET, VEGAN_DIET, VEGETARIAN_DIET].freeze

    def self.values
      VALUES
    end
  end
end
