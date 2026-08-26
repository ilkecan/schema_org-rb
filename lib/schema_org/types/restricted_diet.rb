module SchemaOrg
  # https://schema.org/RestrictedDiet
  #
  # A diet restricted to certain foods or preparations for cultural, religious, health or lifestyle reasons.
  class RestrictedDiet < Base
    include Mixins::RestrictedDiet
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
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
    DIABETIC_DIET = EnumerationValue.new("DiabeticDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    GLUTEN_FREE_DIET = EnumerationValue.new("GlutenFreeDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    HALAL_DIET = EnumerationValue.new("HalalDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    HINDU_DIET = EnumerationValue.new("HinduDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    KOSHER_DIET = EnumerationValue.new("KosherDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    LOW_CALORIE_DIET = EnumerationValue.new("LowCalorieDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    LOW_FAT_DIET = EnumerationValue.new("LowFatDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    LOW_LACTOSE_DIET = EnumerationValue.new("LowLactoseDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    LOW_SALT_DIET = EnumerationValue.new("LowSaltDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    VEGAN_DIET = EnumerationValue.new("VeganDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    VEGETARIAN_DIET = EnumerationValue.new("VegetarianDiet", self, [SchemaOrg::RestrictedDiet]).freeze
    VALUES = [DIABETIC_DIET, GLUTEN_FREE_DIET, HALAL_DIET, HINDU_DIET, KOSHER_DIET, LOW_CALORIE_DIET, LOW_FAT_DIET, LOW_LACTOSE_DIET, LOW_SALT_DIET, VEGAN_DIET, VEGETARIAN_DIET].freeze

    def self.values
      VALUES
    end
  end
end
