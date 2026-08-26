module SchemaOrg
  # https://schema.org/ItemAvailability
  #
  # A list of possible product availability options.
  class ItemAvailability < Base
    include Mixins::ItemAvailability
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
    BACK_ORDER = EnumerationValue.new("BackOrder", self, [SchemaOrg::ItemAvailability]).freeze
    DISCONTINUED = EnumerationValue.new("Discontinued", self, [SchemaOrg::ItemAvailability]).freeze
    IN_STOCK = EnumerationValue.new("InStock", self, [SchemaOrg::ItemAvailability]).freeze
    IN_STORE_ONLY = EnumerationValue.new("InStoreOnly", self, [SchemaOrg::ItemAvailability]).freeze
    LIMITED_AVAILABILITY = EnumerationValue.new("LimitedAvailability", self, [SchemaOrg::ItemAvailability]).freeze
    MADE_TO_ORDER = EnumerationValue.new("MadeToOrder", self, [SchemaOrg::ItemAvailability]).freeze
    ONLINE_ONLY = EnumerationValue.new("OnlineOnly", self, [SchemaOrg::ItemAvailability]).freeze
    OUT_OF_STOCK = EnumerationValue.new("OutOfStock", self, [SchemaOrg::ItemAvailability]).freeze
    PRE_ORDER = EnumerationValue.new("PreOrder", self, [SchemaOrg::ItemAvailability]).freeze
    PRE_SALE = EnumerationValue.new("PreSale", self, [SchemaOrg::ItemAvailability]).freeze
    RESERVED = EnumerationValue.new("Reserved", self, [SchemaOrg::ItemAvailability]).freeze
    SOLD_OUT = EnumerationValue.new("SoldOut", self, [SchemaOrg::ItemAvailability]).freeze
    VALUES = [BACK_ORDER, DISCONTINUED, IN_STOCK, IN_STORE_ONLY, LIMITED_AVAILABILITY, MADE_TO_ORDER, ONLINE_ONLY, OUT_OF_STOCK, PRE_ORDER, PRE_SALE, RESERVED, SOLD_OUT].freeze

    def self.values
      VALUES
    end
  end
end
