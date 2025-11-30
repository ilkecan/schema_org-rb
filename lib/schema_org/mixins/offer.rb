require "active_support/concern"

module SchemaOrg
  module Mixins
    module Offer
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :accepted_payment_method # The payment method(s) that are accepted in general by an organization, or for some specific demand or offer.
        option :add_on # An additional offer that can only be obtained in combination with the first base offer (e.g. supplements and extensions that are available for a surcharge).
        option :additional_property # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
        option :advance_booking_requirement # The amount of time that is required between accepting the offer and the actual usage of the resource or service.
        option :aggregate_rating # The overall rating, based on a collection of reviews or ratings, of the item.
        option :availability # The availability of this item&#x2014;for example In stock, Out of stock, Pre-order, etc.
        option :availability_ends # The end of the availability of the product or service included in the offer.
        option :availability_starts # The beginning of the availability of the product or service included in the offer.
        option :available_at_or_from # The place(s) from which the offer can be obtained (e.g. store locations).
        option :available_delivery_method # The delivery method(s) available for this offer.
        option :business_function # The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell.
        option :category # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
        option :delivery_lead_time # The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup.
        option :eligible_customer_type # The type(s) of customers for which the given offer is valid.
        option :eligible_duration # The duration for which the given offer is valid.
        option :eligible_quantity # The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity.
        option :eligible_region # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\n\nSee also [[ineligibleRegion]].
        option :eligible_transaction_volume # The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount.
        option :gtin12 # The GTIN-12 code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
        option :gtin13 # The GTIN-13 code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
        option :gtin14 # The GTIN-14 code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
        option :gtin8 # The GTIN-8 code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
        option :includes_object # This links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]].
        option :ineligible_region # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also [[eligibleRegion]].
        option :inventory_level # The current approximate inventory level for the item or items.
        option :is_family_friendly # Indicates whether this content is family friendly.
        option :item_condition # A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
        option :mpn # The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
        option :price # The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\n\nUsage guidelines:\n\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.
        option :price_currency # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
        option :price_specification # One or more detailed price specifications, indicating the unit price and delivery or payment charges.
        option :price_valid_until # The date after which the price is no longer available.
        option :reviews # Review of the item. Superseded by `review`.
        option :shipping_details # Indicates information about the shipping policies and options associated with an [[Offer]].
        option :sku # The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
        option :valid_from # The date when the item becomes valid.
        option :valid_through # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
        option :item_offered # An item being offered (or demanded). The transactional nature of the offer or demand is documented using [[businessFunction]], e.g. sell, lease etc. While several common expected types are listed explicitly in this definition, others can be used. Using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
        option :offered_by # A pointer to the organization or person making the offer.
        option :review # A review of the item. Supersedes `reviews`.
        option :serial_number # The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer.
        option :warranty # The warranty promise(s) included in the offer. Supersedes `warranty_promise`.
        option :seller # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider. Supersedes `vendor`.
        option :area_served # The geographic area where a service or offered item is provided. Supersedes `service_area`.
      end
    end
  end
end
