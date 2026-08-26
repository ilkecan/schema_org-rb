# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ItemAvailability
  #
  # A list of possible product availability options.
  class ItemAvailability < Base
    include Mixins::ItemAvailability

    SCHEMA_NAME = "ItemAvailability"
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
    BACK_ORDER = EnumerationValue.new("BackOrder", [SchemaOrg::ItemAvailability])
    DISCONTINUED = EnumerationValue.new("Discontinued", [SchemaOrg::ItemAvailability])
    IN_STOCK = EnumerationValue.new("InStock", [SchemaOrg::ItemAvailability])
    IN_STORE_ONLY = EnumerationValue.new("InStoreOnly", [SchemaOrg::ItemAvailability])
    LIMITED_AVAILABILITY = EnumerationValue.new("LimitedAvailability", [SchemaOrg::ItemAvailability])
    MADE_TO_ORDER = EnumerationValue.new("MadeToOrder", [SchemaOrg::ItemAvailability])
    ONLINE_ONLY = EnumerationValue.new("OnlineOnly", [SchemaOrg::ItemAvailability])
    OUT_OF_STOCK = EnumerationValue.new("OutOfStock", [SchemaOrg::ItemAvailability])
    PRE_ORDER = EnumerationValue.new("PreOrder", [SchemaOrg::ItemAvailability])
    PRE_SALE = EnumerationValue.new("PreSale", [SchemaOrg::ItemAvailability])
    RESERVED = EnumerationValue.new("Reserved", [SchemaOrg::ItemAvailability])
    SOLD_OUT = EnumerationValue.new("SoldOut", [SchemaOrg::ItemAvailability])
    VALUES = [BACK_ORDER, DISCONTINUED, IN_STOCK, IN_STORE_ONLY, LIMITED_AVAILABILITY, MADE_TO_ORDER, ONLINE_ONLY, OUT_OF_STOCK, PRE_ORDER, PRE_SALE, RESERVED, SOLD_OUT].freeze

    def self.values
      VALUES
    end
  end
end
