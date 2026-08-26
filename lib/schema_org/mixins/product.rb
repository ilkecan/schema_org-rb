module SchemaOrg
  module Mixins
    module Product
      include Thing

      def self.schema_property_definitions
        {
          :additional_property => {
            schema_name: "additionalProperty",
            ranges: ["PropertyValue"],
          }.freeze,
          :aggregate_rating => {
            schema_name: "aggregateRating",
            ranges: ["AggregateRating"],
          }.freeze,
          :audience => {
            schema_name: "audience",
            ranges: ["Audience"],
          }.freeze,
          :award => {
            schema_name: "award",
            ranges: ["Text"],
          }.freeze,
          :awards => {
            schema_name: "awards",
            ranges: ["Text"],
          }.freeze,
          :brand => {
            schema_name: "brand",
            ranges: ["Brand", "Organization"],
          }.freeze,
          :category => {
            schema_name: "category",
            ranges: ["Text", "Thing"],
          }.freeze,
          :color => {
            schema_name: "color",
            ranges: ["Text"],
          }.freeze,
          :country_of_origin => {
            schema_name: "countryOfOrigin",
            ranges: ["Country"],
          }.freeze,
          :depth => {
            schema_name: "depth",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
          :gtin12 => {
            schema_name: "gtin12",
            ranges: ["Text"],
          }.freeze,
          :gtin13 => {
            schema_name: "gtin13",
            ranges: ["Text"],
          }.freeze,
          :gtin14 => {
            schema_name: "gtin14",
            ranges: ["Text"],
          }.freeze,
          :gtin8 => {
            schema_name: "gtin8",
            ranges: ["Text"],
          }.freeze,
          :height => {
            schema_name: "height",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
          :is_accessory_or_spare_part_for => {
            schema_name: "isAccessoryOrSparePartFor",
            ranges: ["Product"],
          }.freeze,
          :is_consumable_for => {
            schema_name: "isConsumableFor",
            ranges: ["Product"],
          }.freeze,
          :is_family_friendly => {
            schema_name: "isFamilyFriendly",
            ranges: ["Boolean"],
          }.freeze,
          :is_related_to => {
            schema_name: "isRelatedTo",
            ranges: ["Product", "Service"],
          }.freeze,
          :is_similar_to => {
            schema_name: "isSimilarTo",
            ranges: ["Product", "Service"],
          }.freeze,
          :item_condition => {
            schema_name: "itemCondition",
            ranges: ["OfferItemCondition"],
          }.freeze,
          :keywords => {
            schema_name: "keywords",
            ranges: ["DefinedTerm", "Text", "URL"],
          }.freeze,
          :logo => {
            schema_name: "logo",
            ranges: ["ImageObject", "URL"],
          }.freeze,
          :manufacturer => {
            schema_name: "manufacturer",
            ranges: ["Organization"],
          }.freeze,
          :material => {
            schema_name: "material",
            ranges: ["Product", "Text", "URL"],
          }.freeze,
          :model => {
            schema_name: "model",
            ranges: ["ProductModel", "Text"],
          }.freeze,
          :mpn => {
            schema_name: "mpn",
            ranges: ["Text"],
          }.freeze,
          :offers => {
            schema_name: "offers",
            ranges: ["Demand", "Offer"],
          }.freeze,
          :product_id => {
            schema_name: "productID",
            ranges: ["Text"],
          }.freeze,
          :production_date => {
            schema_name: "productionDate",
            ranges: ["Date"],
          }.freeze,
          :purchase_date => {
            schema_name: "purchaseDate",
            ranges: ["Date"],
          }.freeze,
          :release_date => {
            schema_name: "releaseDate",
            ranges: ["Date"],
          }.freeze,
          :review => {
            schema_name: "review",
            ranges: ["Review"],
          }.freeze,
          :reviews => {
            schema_name: "reviews",
            ranges: ["Review"],
          }.freeze,
          :sku => {
            schema_name: "sku",
            ranges: ["Text"],
          }.freeze,
          :slogan => {
            schema_name: "slogan",
            ranges: ["Text"],
          }.freeze,
          :weight => {
            schema_name: "weight",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :width => {
            schema_name: "width",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def additional_property
        read_property(:additional_property)
      end

      def additional_property=(value)
        write_property(:additional_property, value)
      end

      def aggregate_rating
        read_property(:aggregate_rating)
      end

      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      def audience
        read_property(:audience)
      end

      def audience=(value)
        write_property(:audience, value)
      end

      def award
        read_property(:award)
      end

      def award=(value)
        write_property(:award, value)
      end

      def awards
        read_property(:awards)
      end

      def awards=(value)
        write_property(:awards, value)
      end

      def brand
        read_property(:brand)
      end

      def brand=(value)
        write_property(:brand, value)
      end

      def category
        read_property(:category)
      end

      def category=(value)
        write_property(:category, value)
      end

      def color
        read_property(:color)
      end

      def color=(value)
        write_property(:color, value)
      end

      def country_of_origin
        read_property(:country_of_origin)
      end

      def country_of_origin=(value)
        write_property(:country_of_origin, value)
      end

      def depth
        read_property(:depth)
      end

      def depth=(value)
        write_property(:depth, value)
      end

      def gtin12
        read_property(:gtin12)
      end

      def gtin12=(value)
        write_property(:gtin12, value)
      end

      def gtin13
        read_property(:gtin13)
      end

      def gtin13=(value)
        write_property(:gtin13, value)
      end

      def gtin14
        read_property(:gtin14)
      end

      def gtin14=(value)
        write_property(:gtin14, value)
      end

      def gtin8
        read_property(:gtin8)
      end

      def gtin8=(value)
        write_property(:gtin8, value)
      end

      def height
        read_property(:height)
      end

      def height=(value)
        write_property(:height, value)
      end

      def is_accessory_or_spare_part_for
        read_property(:is_accessory_or_spare_part_for)
      end

      def is_accessory_or_spare_part_for=(value)
        write_property(:is_accessory_or_spare_part_for, value)
      end

      def is_consumable_for
        read_property(:is_consumable_for)
      end

      def is_consumable_for=(value)
        write_property(:is_consumable_for, value)
      end

      def is_family_friendly
        read_property(:is_family_friendly)
      end

      def is_family_friendly=(value)
        write_property(:is_family_friendly, value)
      end

      def is_related_to
        read_property(:is_related_to)
      end

      def is_related_to=(value)
        write_property(:is_related_to, value)
      end

      def is_similar_to
        read_property(:is_similar_to)
      end

      def is_similar_to=(value)
        write_property(:is_similar_to, value)
      end

      def item_condition
        read_property(:item_condition)
      end

      def item_condition=(value)
        write_property(:item_condition, value)
      end

      def keywords
        read_property(:keywords)
      end

      def keywords=(value)
        write_property(:keywords, value)
      end

      def logo
        read_property(:logo)
      end

      def logo=(value)
        write_property(:logo, value)
      end

      def manufacturer
        read_property(:manufacturer)
      end

      def manufacturer=(value)
        write_property(:manufacturer, value)
      end

      def material
        read_property(:material)
      end

      def material=(value)
        write_property(:material, value)
      end

      def model
        read_property(:model)
      end

      def model=(value)
        write_property(:model, value)
      end

      def mpn
        read_property(:mpn)
      end

      def mpn=(value)
        write_property(:mpn, value)
      end

      def offers
        read_property(:offers)
      end

      def offers=(value)
        write_property(:offers, value)
      end

      def product_id
        read_property(:product_id)
      end

      def product_id=(value)
        write_property(:product_id, value)
      end

      def production_date
        read_property(:production_date)
      end

      def production_date=(value)
        write_property(:production_date, value)
      end

      def purchase_date
        read_property(:purchase_date)
      end

      def purchase_date=(value)
        write_property(:purchase_date, value)
      end

      def release_date
        read_property(:release_date)
      end

      def release_date=(value)
        write_property(:release_date, value)
      end

      def review
        read_property(:review)
      end

      def review=(value)
        write_property(:review, value)
      end

      def reviews
        read_property(:reviews)
      end

      def reviews=(value)
        write_property(:reviews, value)
      end

      def sku
        read_property(:sku)
      end

      def sku=(value)
        write_property(:sku, value)
      end

      def slogan
        read_property(:slogan)
      end

      def slogan=(value)
        write_property(:slogan, value)
      end

      def weight
        read_property(:weight)
      end

      def weight=(value)
        write_property(:weight, value)
      end

      def width
        read_property(:width)
      end

      def width=(value)
        write_property(:width, value)
      end

    end
  end
end
