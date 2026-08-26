module SchemaOrg
  # https://schema.org/OfferItemCondition
  #
  # A list of possible conditions for the item.
  class OfferItemCondition < Base
    include Mixins::OfferItemCondition
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
    DAMAGED_CONDITION = EnumerationValue.new("DamagedCondition", self, [SchemaOrg::OfferItemCondition]).freeze
    NEW_CONDITION = EnumerationValue.new("NewCondition", self, [SchemaOrg::OfferItemCondition]).freeze
    REFURBISHED_CONDITION = EnumerationValue.new("RefurbishedCondition", self, [SchemaOrg::OfferItemCondition]).freeze
    USED_CONDITION = EnumerationValue.new("UsedCondition", self, [SchemaOrg::OfferItemCondition]).freeze
    VALUES = [DAMAGED_CONDITION, NEW_CONDITION, REFURBISHED_CONDITION, USED_CONDITION].freeze

    def self.values
      VALUES
    end
  end
end
