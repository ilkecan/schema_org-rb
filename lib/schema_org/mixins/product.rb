require "active_support/concern"

module SchemaOrg
  module Mixins
    module Product
      extend ActiveSupport::Concern

      include Thing

      included do
        option :additional_property # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
        option :aggregate_rating # The overall rating, based on a collection of reviews or ratings, of the item.
        option :awards # Awards won by or for this item. Superseded by `award`.
        option :brand # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
        option :category # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
        option :color # The color of the product.
        option :country_of_origin # The country of origin of something, including products as well as creative  works such as movie and TV content.  In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.  In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
        option :depth # The depth of the item.
        option :gtin12 # The GTIN-12 code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
        option :gtin13 # The GTIN-13 code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
        option :gtin14 # The GTIN-14 code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
        option :gtin8 # The GTIN-8 code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
        option :height # The height of the item.
        option :is_accessory_or_spare_part_for # A pointer to another product (or multiple products) for which this product is an accessory or spare part.
        option :is_consumable_for # A pointer to another product (or multiple products) for which this product is a consumable.
        option :is_family_friendly # Indicates whether this content is family friendly.
        option :is_related_to # A pointer to another, somehow related product (or multiple products).
        option :is_similar_to # A pointer to another, functionally similar product (or multiple products).
        option :item_condition # A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
        option :keywords # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
        option :logo # An associated logo.
        option :manufacturer # The manufacturer of the product.
        option :model # The model of the product. Use with the URL of a ProductModel or a textual representation of the model identifier. The URL of the ProductModel can be from an external source. It is recommended to additionally provide strong product identifiers via the gtin8/gtin13/gtin14 and mpn properties.
        option :mpn # The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
        option :product_id # The product identifier, such as ISBN. For example: ``` meta itemprop="productID" content="isbn:123-456-789" ```.
        option :production_date # The date of production of the item, e.g. vehicle.
        option :purchase_date # The date the item, e.g. vehicle, was purchased by the current owner.
        option :release_date # The release date of a product or product model. This can be used to distinguish the exact variant of a product.
        option :reviews # Review of the item. Superseded by `review`.
        option :sku # The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
        option :slogan # A slogan or motto associated with the item.
        option :weight # The weight of the product or person.
        option :width # The width of the item.
        option :audience # An intended audience, i.e. a group for whom something was created. Supersedes `service_audience`.
        option :award # An award won by or for this item. Supersedes `awards`.
        option :offers # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer. Inverse-property: `item_offered`.
        option :review # A review of the item. Supersedes `reviews`.
        option :material # A material that something is made from, e.g. leather, wool, cotton, paper.
      end
    end
  end
end
