# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Offer
      include Intangible

      def self.schema_property_definitions
        {
          accepted_payment_method: {
            schema_name: "acceptedPaymentMethod",
            schema_url: "https://schema.org/acceptedPaymentMethod",
            comment_lines: ["The payment method(s) that are accepted in general by an organization, or for some specific demand or offer."].freeze,
            ranges: ["LoanOrCredit", "PaymentMethod", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          add_on: {
            schema_name: "addOn",
            schema_url: "https://schema.org/addOn",
            comment_lines: ["An additional offer that can only be obtained in combination with the first base offer (e.g. supplements and extensions that are available for a surcharge)."].freeze,
            ranges: ["Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          additional_property: {
            schema_name: "additionalProperty",
            schema_url: "https://schema.org/additionalProperty",
            comment_lines: ["A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism."].freeze,
            ranges: ["PropertyValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          advance_booking_requirement: {
            schema_name: "advanceBookingRequirement",
            schema_url: "https://schema.org/advanceBookingRequirement",
            comment_lines: ["The amount of time that is required between accepting the offer and the actual usage of the resource or service."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          aggregate_rating: {
            schema_name: "aggregateRating",
            schema_url: "https://schema.org/aggregateRating",
            comment_lines: ["The overall rating, based on a collection of reviews or ratings, of the item."].freeze,
            ranges: ["AggregateRating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          area_served: {
            schema_name: "areaServed",
            schema_url: "https://schema.org/areaServed",
            comment_lines: ["The geographic area where a service or offered item is provided."].freeze,
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "serviceArea"
          }.freeze,
          asin: {
            schema_name: "asin",
            schema_url: "https://schema.org/asin",
            comment_lines: ["An Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon.com and its partners for product identification within the Amazon organization (summary from [Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s article).", "", "Note also that this is a definition for how to include ASINs in Schema.org data, and not a definition of ASINs in general - see documentation from Amazon for authoritative details.", "ASINs are most commonly encoded as text strings, but the [asin] property supports URL/URI as potential values too."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          availability: {
            schema_name: "availability",
            schema_url: "https://schema.org/availability",
            comment_lines: ["The availability of this item&#x2014;for example In stock, Out of stock, Pre-order, etc."].freeze,
            ranges: ["ItemAvailability"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          availability_ends: {
            schema_name: "availabilityEnds",
            schema_url: "https://schema.org/availabilityEnds",
            comment_lines: ["The end of the availability of the product or service included in the offer."].freeze,
            ranges: ["Date", "DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          availability_starts: {
            schema_name: "availabilityStarts",
            schema_url: "https://schema.org/availabilityStarts",
            comment_lines: ["The beginning of the availability of the product or service included in the offer."].freeze,
            ranges: ["Date", "DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          available_at_or_from: {
            schema_name: "availableAtOrFrom",
            schema_url: "https://schema.org/availableAtOrFrom",
            comment_lines: ["The place(s) from which the offer can be obtained (e.g. store locations)."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          available_delivery_method: {
            schema_name: "availableDeliveryMethod",
            schema_url: "https://schema.org/availableDeliveryMethod",
            comment_lines: ["The delivery method(s) available for this offer."].freeze,
            ranges: ["DeliveryMethod"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          business_function: {
            schema_name: "businessFunction",
            schema_url: "https://schema.org/businessFunction",
            comment_lines: ["The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell."].freeze,
            ranges: ["BusinessFunction"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          category: {
            schema_name: "category",
            schema_url: "https://schema.org/category",
            comment_lines: ["A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."].freeze,
            ranges: ["CategoryCode", "PhysicalActivityCategory", "Text", "Thing", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          checkout_page_url_template: {
            schema_name: "checkoutPageURLTemplate",
            schema_url: "https://schema.org/checkoutPageURLTemplate",
            comment_lines: ["A URL template (RFC 6570) for a checkout page for an offer. This approach allows merchants to specify a URL for online checkout of the offered product, by interpolating parameters such as the logged in user ID, product ID, quantity, discount code etc. Parameter naming and standardization are not specified here."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          delivery_lead_time: {
            schema_name: "deliveryLeadTime",
            schema_url: "https://schema.org/deliveryLeadTime",
            comment_lines: ["The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          eligible_customer_type: {
            schema_name: "eligibleCustomerType",
            schema_url: "https://schema.org/eligibleCustomerType",
            comment_lines: ["The type(s) of customers for which the given offer is valid."].freeze,
            ranges: ["BusinessEntityType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          eligible_duration: {
            schema_name: "eligibleDuration",
            schema_url: "https://schema.org/eligibleDuration",
            comment_lines: ["The duration for which the given offer is valid."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          eligible_quantity: {
            schema_name: "eligibleQuantity",
            schema_url: "https://schema.org/eligibleQuantity",
            comment_lines: ["The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          eligible_region: {
            schema_name: "eligibleRegion",
            schema_url: "https://schema.org/eligibleRegion",
            comment_lines: ["The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\\n\\nSee also [[ineligibleRegion]]."].freeze,
            ranges: ["GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          eligible_transaction_volume: {
            schema_name: "eligibleTransactionVolume",
            schema_url: "https://schema.org/eligibleTransactionVolume",
            comment_lines: ["The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount."].freeze,
            ranges: ["PriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          gtin: {
            schema_name: "gtin",
            schema_url: "https://schema.org/gtin",
            comment_lines: ["A Global Trade Item Number ([GTIN](https://www.gs1.org/standards/id-keys/gtin)). GTINs identify trade items, including products and services, using numeric identification codes.", "", "A correct [[gtin]] value should be a valid GTIN, which means that it should be an all-numeric string of either 8, 12, 13 or 14 digits, or a \"GS1 Digital Link\" URL based on such a string. The numeric component should also have a [valid GS1 check digit](https://www.gs1.org/services/check-digit-calculator) and meet the other rules for valid GTINs. See also [GS1's GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) and [Wikipedia](https://en.wikipedia.org/wiki/Global_Trade_Item_Number) for more details. Left-padding of the gtin values is not required or encouraged. The [[gtin]] property generalizes the earlier [[gtin8]], [[gtin12]], [[gtin13]], and [[gtin14]] properties.", "", "The GS1 [digital link specifications](https://www.gs1.org/standards/Digital-Link/) expresses GTINs as URLs (URIs, IRIs, etc.).", "Digital Links should be populated into the [[hasGS1DigitalLink]] attribute.", "", "Note also that this is a definition for how to include GTINs in Schema.org data, and not a definition of GTINs in general - see the GS1 documentation for authoritative details."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          gtin12: {
            schema_name: "gtin12",
            schema_url: "https://schema.org/gtin12",
            comment_lines: ["The GTIN-12 code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          gtin13: {
            schema_name: "gtin13",
            schema_url: "https://schema.org/gtin13",
            comment_lines: ["The GTIN-13 code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          gtin14: {
            schema_name: "gtin14",
            schema_url: "https://schema.org/gtin14",
            comment_lines: ["The GTIN-14 code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          gtin8: {
            schema_name: "gtin8",
            schema_url: "https://schema.org/gtin8",
            comment_lines: ["The GTIN-8 code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_adult_consideration: {
            schema_name: "hasAdultConsideration",
            schema_url: "https://schema.org/hasAdultConsideration",
            comment_lines: ["Used to tag an item to be intended or suitable for consumption or use by adults only."].freeze,
            ranges: ["AdultOrientedEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_gs1_digital_link: {
            schema_name: "hasGS1DigitalLink",
            schema_url: "https://schema.org/hasGS1DigitalLink",
            comment_lines: ["The <a href=\"https://www.gs1.org/standards/gs1-digital-link\">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_measurement: {
            schema_name: "hasMeasurement",
            schema_url: "https://schema.org/hasMeasurement",
            comment_lines: ["A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_merchant_return_policy: {
            schema_name: "hasMerchantReturnPolicy",
            schema_url: "https://schema.org/hasMerchantReturnPolicy",
            comment_lines: ["Specifies a MerchantReturnPolicy that may be applicable."].freeze,
            ranges: ["MerchantReturnPolicy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "hasProductReturnPolicy"
          }.freeze,
          includes_object: {
            schema_name: "includesObject",
            schema_url: "https://schema.org/includesObject",
            comment_lines: ["This links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]]."].freeze,
            ranges: ["TypeAndQuantityNode"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ineligible_region: {
            schema_name: "ineligibleRegion",
            schema_url: "https://schema.org/ineligibleRegion",
            comment_lines: ["The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\\n\\nSee also [[eligibleRegion]]."].freeze,
            ranges: ["GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          inventory_level: {
            schema_name: "inventoryLevel",
            schema_url: "https://schema.org/inventoryLevel",
            comment_lines: ["The current approximate inventory level for the item or items."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_family_friendly: {
            schema_name: "isFamilyFriendly",
            schema_url: "https://schema.org/isFamilyFriendly",
            comment_lines: ["Indicates whether this content is family friendly."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_condition: {
            schema_name: "itemCondition",
            schema_url: "https://schema.org/itemCondition",
            comment_lines: ["A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns."].freeze,
            ranges: ["OfferItemCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_offered: {
            schema_name: "itemOffered",
            schema_url: "https://schema.org/itemOffered",
            comment_lines: ["An item being offered (or demanded). The transactional nature of the offer or demand is documented using [[businessFunction]], e.g. sell, lease etc. While several common expected types are listed explicitly in this definition, others can be used. Using a second type, such as Product or a subtype of Product, can clarify the nature of the offer."].freeze,
            ranges: ["AggregateOffer", "CreativeWork", "Event", "MenuItem", "Product", "Service", "Trip"].freeze,
            external_ranges: [].freeze,
            inverse_of: "offers",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lease_length: {
            schema_name: "leaseLength",
            schema_url: "https://schema.org/leaseLength",
            comment_lines: ["Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          mobile_url: {
            schema_name: "mobileUrl",
            schema_url: "https://schema.org/mobileUrl",
            comment_lines: ["The [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'.", "", "To discourage over-use, and reflecting intial usecases, the property is expected only on [[Product]] and [[Offer]], rather than [[Thing]]. The general trend in web technology is towards [responsive design](https://en.wikipedia.org/wiki/Responsive_web_design) in which content can be flexibly adapted to a wide range of browsing environments. Pages and sites referenced with the long-established [[url]] property should ideally also be usable on a wide variety of devices, including mobile phones. In most cases, it would be pointless and counter productive to attempt to update all [[url]] markup to use [[mobileUrl]] for more mobile-oriented pages. The property is intended for the case when items (primarily [[Product]] and [[Offer]]) have extra URLs hosted on an additional \"mobile site\" alongside the main one. It should not be taken as an endorsement of this publication style."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          mpn: {
            schema_name: "mpn",
            schema_url: "https://schema.org/mpn",
            comment_lines: ["The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          offered_by: {
            schema_name: "offeredBy",
            schema_url: "https://schema.org/offeredBy",
            comment_lines: ["A pointer to the organization or person making the offer."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: "makesOffer",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price: {
            schema_name: "price",
            schema_url: "https://schema.org/price",
            comment_lines: ["The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\\n\\nUsage guidelines:\\n\\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a \"content=\" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price_currency: {
            schema_name: "priceCurrency",
            schema_url: "https://schema.org/priceCurrency",
            comment_lines: ["The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price_specification: {
            schema_name: "priceSpecification",
            schema_url: "https://schema.org/priceSpecification",
            comment_lines: ["One or more detailed price specifications, indicating the unit price and delivery or payment charges."].freeze,
            ranges: ["PriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price_valid_until: {
            schema_name: "priceValidUntil",
            schema_url: "https://schema.org/priceValidUntil",
            comment_lines: ["The date after which the price is no longer available."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          review: {
            schema_name: "review",
            schema_url: "https://schema.org/review",
            comment_lines: ["A review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "reviews"
          }.freeze,
          reviews: {
            schema_name: "reviews",
            schema_url: "https://schema.org/reviews",
            comment_lines: ["Review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "review",
            supersedes: nil
          }.freeze,
          seller: {
            schema_name: "seller",
            schema_url: "https://schema.org/seller",
            comment_lines: ["An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "vendor"
          }.freeze,
          serial_number: {
            schema_name: "serialNumber",
            schema_url: "https://schema.org/serialNumber",
            comment_lines: ["The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          shipping_details: {
            schema_name: "shippingDetails",
            schema_url: "https://schema.org/shippingDetails",
            comment_lines: ["Indicates information about the shipping policies and options associated with an [[Offer]]."].freeze,
            ranges: ["OfferShippingDetails"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sku: {
            schema_name: "sku",
            schema_url: "https://schema.org/sku",
            comment_lines: ["The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_for_member_tier: {
            schema_name: "validForMemberTier",
            schema_url: "https://schema.org/validForMemberTier",
            comment_lines: ["The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for."].freeze,
            ranges: ["MemberProgramTier"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_from: {
            schema_name: "validFrom",
            schema_url: "https://schema.org/validFrom",
            comment_lines: ["The date when the item becomes valid."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_through: {
            schema_name: "validThrough",
            schema_url: "https://schema.org/validThrough",
            comment_lines: ["The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          warranty: {
            schema_name: "warranty",
            schema_url: "https://schema.org/warranty",
            comment_lines: ["The warranty promise(s) included in the offer."].freeze,
            ranges: ["WarrantyPromise"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "warrantyPromise"
          }.freeze
        }.freeze
      end

      # The payment method(s) that are accepted in general by an organization, or for some specific demand or offer.
      def accepted_payment_method
        read_property(:accepted_payment_method)
      end

      # The payment method(s) that are accepted in general by an organization, or for some specific demand or offer.
      def accepted_payment_method=(value)
        write_property(:accepted_payment_method, value)
      end

      # An additional offer that can only be obtained in combination with the first base offer (e.g. supplements and extensions that are available for a surcharge).
      def add_on
        read_property(:add_on)
      end

      # An additional offer that can only be obtained in combination with the first base offer (e.g. supplements and extensions that are available for a surcharge).
      def add_on=(value)
        write_property(:add_on, value)
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property
        read_property(:additional_property)
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property=(value)
        write_property(:additional_property, value)
      end

      # The amount of time that is required between accepting the offer and the actual usage of the resource or service.
      def advance_booking_requirement
        read_property(:advance_booking_requirement)
      end

      # The amount of time that is required between accepting the offer and the actual usage of the resource or service.
      def advance_booking_requirement=(value)
        write_property(:advance_booking_requirement, value)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating
        read_property(:aggregate_rating)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      # The geographic area where a service or offered item is provided.
      # Supersedes `serviceArea`.
      def area_served
        read_property(:area_served)
      end

      # The geographic area where a service or offered item is provided.
      # Supersedes `serviceArea`.
      def area_served=(value)
        write_property(:area_served, value)
      end

      # An Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon.com and its partners for product identification within the Amazon organization (summary from [Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s article).
      #
      # Note also that this is a definition for how to include ASINs in Schema.org data, and not a definition of ASINs in general - see documentation from Amazon for authoritative details.
      # ASINs are most commonly encoded as text strings, but the [asin] property supports URL/URI as potential values too.
      def asin
        read_property(:asin)
      end

      # An Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon.com and its partners for product identification within the Amazon organization (summary from [Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s article).
      #
      # Note also that this is a definition for how to include ASINs in Schema.org data, and not a definition of ASINs in general - see documentation from Amazon for authoritative details.
      # ASINs are most commonly encoded as text strings, but the [asin] property supports URL/URI as potential values too.
      def asin=(value)
        write_property(:asin, value)
      end

      # The availability of this item&#x2014;for example In stock, Out of stock, Pre-order, etc.
      def availability
        read_property(:availability)
      end

      # The availability of this item&#x2014;for example In stock, Out of stock, Pre-order, etc.
      def availability=(value)
        write_property(:availability, value)
      end

      # The end of the availability of the product or service included in the offer.
      def availability_ends
        read_property(:availability_ends)
      end

      # The end of the availability of the product or service included in the offer.
      def availability_ends=(value)
        write_property(:availability_ends, value)
      end

      # The beginning of the availability of the product or service included in the offer.
      def availability_starts
        read_property(:availability_starts)
      end

      # The beginning of the availability of the product or service included in the offer.
      def availability_starts=(value)
        write_property(:availability_starts, value)
      end

      # The place(s) from which the offer can be obtained (e.g. store locations).
      def available_at_or_from
        read_property(:available_at_or_from)
      end

      # The place(s) from which the offer can be obtained (e.g. store locations).
      def available_at_or_from=(value)
        write_property(:available_at_or_from, value)
      end

      # The delivery method(s) available for this offer.
      def available_delivery_method
        read_property(:available_delivery_method)
      end

      # The delivery method(s) available for this offer.
      def available_delivery_method=(value)
        write_property(:available_delivery_method, value)
      end

      # The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell.
      def business_function
        read_property(:business_function)
      end

      # The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell.
      def business_function=(value)
        write_property(:business_function, value)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category
        read_property(:category)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category=(value)
        write_property(:category, value)
      end

      # A URL template (RFC 6570) for a checkout page for an offer. This approach allows merchants to specify a URL for online checkout of the offered product, by interpolating parameters such as the logged in user ID, product ID, quantity, discount code etc. Parameter naming and standardization are not specified here.
      def checkout_page_url_template
        read_property(:checkout_page_url_template)
      end

      # A URL template (RFC 6570) for a checkout page for an offer. This approach allows merchants to specify a URL for online checkout of the offered product, by interpolating parameters such as the logged in user ID, product ID, quantity, discount code etc. Parameter naming and standardization are not specified here.
      def checkout_page_url_template=(value)
        write_property(:checkout_page_url_template, value)
      end

      # The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup.
      def delivery_lead_time
        read_property(:delivery_lead_time)
      end

      # The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup.
      def delivery_lead_time=(value)
        write_property(:delivery_lead_time, value)
      end

      # The type(s) of customers for which the given offer is valid.
      def eligible_customer_type
        read_property(:eligible_customer_type)
      end

      # The type(s) of customers for which the given offer is valid.
      def eligible_customer_type=(value)
        write_property(:eligible_customer_type, value)
      end

      # The duration for which the given offer is valid.
      def eligible_duration
        read_property(:eligible_duration)
      end

      # The duration for which the given offer is valid.
      def eligible_duration=(value)
        write_property(:eligible_duration, value)
      end

      # The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity.
      def eligible_quantity
        read_property(:eligible_quantity)
      end

      # The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity.
      def eligible_quantity=(value)
        write_property(:eligible_quantity, value)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\n\nSee also [[ineligibleRegion]].
      def eligible_region
        read_property(:eligible_region)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\n\nSee also [[ineligibleRegion]].
      def eligible_region=(value)
        write_property(:eligible_region, value)
      end

      # The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount.
      def eligible_transaction_volume
        read_property(:eligible_transaction_volume)
      end

      # The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount.
      def eligible_transaction_volume=(value)
        write_property(:eligible_transaction_volume, value)
      end

      # A Global Trade Item Number ([GTIN](https://www.gs1.org/standards/id-keys/gtin)). GTINs identify trade items, including products and services, using numeric identification codes.
      #
      # A correct [[gtin]] value should be a valid GTIN, which means that it should be an all-numeric string of either 8, 12, 13 or 14 digits, or a "GS1 Digital Link" URL based on such a string. The numeric component should also have a [valid GS1 check digit](https://www.gs1.org/services/check-digit-calculator) and meet the other rules for valid GTINs. See also [GS1's GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) and [Wikipedia](https://en.wikipedia.org/wiki/Global_Trade_Item_Number) for more details. Left-padding of the gtin values is not required or encouraged. The [[gtin]] property generalizes the earlier [[gtin8]], [[gtin12]], [[gtin13]], and [[gtin14]] properties.
      #
      # The GS1 [digital link specifications](https://www.gs1.org/standards/Digital-Link/) expresses GTINs as URLs (URIs, IRIs, etc.).
      # Digital Links should be populated into the [[hasGS1DigitalLink]] attribute.
      #
      # Note also that this is a definition for how to include GTINs in Schema.org data, and not a definition of GTINs in general - see the GS1 documentation for authoritative details.
      def gtin
        read_property(:gtin)
      end

      # A Global Trade Item Number ([GTIN](https://www.gs1.org/standards/id-keys/gtin)). GTINs identify trade items, including products and services, using numeric identification codes.
      #
      # A correct [[gtin]] value should be a valid GTIN, which means that it should be an all-numeric string of either 8, 12, 13 or 14 digits, or a "GS1 Digital Link" URL based on such a string. The numeric component should also have a [valid GS1 check digit](https://www.gs1.org/services/check-digit-calculator) and meet the other rules for valid GTINs. See also [GS1's GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) and [Wikipedia](https://en.wikipedia.org/wiki/Global_Trade_Item_Number) for more details. Left-padding of the gtin values is not required or encouraged. The [[gtin]] property generalizes the earlier [[gtin8]], [[gtin12]], [[gtin13]], and [[gtin14]] properties.
      #
      # The GS1 [digital link specifications](https://www.gs1.org/standards/Digital-Link/) expresses GTINs as URLs (URIs, IRIs, etc.).
      # Digital Links should be populated into the [[hasGS1DigitalLink]] attribute.
      #
      # Note also that this is a definition for how to include GTINs in Schema.org data, and not a definition of GTINs in general - see the GS1 documentation for authoritative details.
      def gtin=(value)
        write_property(:gtin, value)
      end

      # The GTIN-12 code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
      def gtin12
        read_property(:gtin12)
      end

      # The GTIN-12 code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
      def gtin12=(value)
        write_property(:gtin12, value)
      end

      # The GTIN-13 code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
      def gtin13
        read_property(:gtin13)
      end

      # The GTIN-13 code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
      def gtin13=(value)
        write_property(:gtin13, value)
      end

      # The GTIN-14 code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
      def gtin14
        read_property(:gtin14)
      end

      # The GTIN-14 code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
      def gtin14=(value)
        write_property(:gtin14, value)
      end

      # The GTIN-8 code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
      def gtin8
        read_property(:gtin8)
      end

      # The GTIN-8 code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
      def gtin8=(value)
        write_property(:gtin8, value)
      end

      # Used to tag an item to be intended or suitable for consumption or use by adults only.
      def has_adult_consideration
        read_property(:has_adult_consideration)
      end

      # Used to tag an item to be intended or suitable for consumption or use by adults only.
      def has_adult_consideration=(value)
        write_property(:has_adult_consideration, value)
      end

      # The <a href="https://www.gs1.org/standards/gs1-digital-link">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly.
      def has_gs1_digital_link
        read_property(:has_gs1_digital_link)
      end

      # The <a href="https://www.gs1.org/standards/gs1-digital-link">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly.
      def has_gs1_digital_link=(value)
        write_property(:has_gs1_digital_link, value)
      end

      # A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings.
      def has_measurement
        read_property(:has_measurement)
      end

      # A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings.
      def has_measurement=(value)
        write_property(:has_measurement, value)
      end

      # Specifies a MerchantReturnPolicy that may be applicable.
      # Supersedes `hasProductReturnPolicy`.
      def has_merchant_return_policy
        read_property(:has_merchant_return_policy)
      end

      # Specifies a MerchantReturnPolicy that may be applicable.
      # Supersedes `hasProductReturnPolicy`.
      def has_merchant_return_policy=(value)
        write_property(:has_merchant_return_policy, value)
      end

      # This links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]].
      def includes_object
        read_property(:includes_object)
      end

      # This links to a node or nodes indicating the exact quantity of the products included in  an [[Offer]] or [[ProductCollection]].
      def includes_object=(value)
        write_property(:includes_object, value)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also [[eligibleRegion]].
      def ineligible_region
        read_property(:ineligible_region)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also [[eligibleRegion]].
      def ineligible_region=(value)
        write_property(:ineligible_region, value)
      end

      # The current approximate inventory level for the item or items.
      def inventory_level
        read_property(:inventory_level)
      end

      # The current approximate inventory level for the item or items.
      def inventory_level=(value)
        write_property(:inventory_level, value)
      end

      # Indicates whether this content is family friendly.
      def is_family_friendly
        read_property(:is_family_friendly)
      end

      # Indicates whether this content is family friendly.
      def is_family_friendly=(value)
        write_property(:is_family_friendly, value)
      end

      # A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
      def item_condition
        read_property(:item_condition)
      end

      # A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
      def item_condition=(value)
        write_property(:item_condition, value)
      end

      # An item being offered (or demanded). The transactional nature of the offer or demand is documented using [[businessFunction]], e.g. sell, lease etc. While several common expected types are listed explicitly in this definition, others can be used. Using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `offers`.
      def item_offered
        read_property(:item_offered)
      end

      # An item being offered (or demanded). The transactional nature of the offer or demand is documented using [[businessFunction]], e.g. sell, lease etc. While several common expected types are listed explicitly in this definition, others can be used. Using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `offers`.
      def item_offered=(value)
        write_property(:item_offered, value)
      end

      # Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property.
      def lease_length
        read_property(:lease_length)
      end

      # Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property.
      def lease_length=(value)
        write_property(:lease_length, value)
      end

      # The [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'.
      #
      # To discourage over-use, and reflecting intial usecases, the property is expected only on [[Product]] and [[Offer]], rather than [[Thing]]. The general trend in web technology is towards [responsive design](https://en.wikipedia.org/wiki/Responsive_web_design) in which content can be flexibly adapted to a wide range of browsing environments. Pages and sites referenced with the long-established [[url]] property should ideally also be usable on a wide variety of devices, including mobile phones. In most cases, it would be pointless and counter productive to attempt to update all [[url]] markup to use [[mobileUrl]] for more mobile-oriented pages. The property is intended for the case when items (primarily [[Product]] and [[Offer]]) have extra URLs hosted on an additional "mobile site" alongside the main one. It should not be taken as an endorsement of this publication style.
      def mobile_url
        read_property(:mobile_url)
      end

      # The [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'.
      #
      # To discourage over-use, and reflecting intial usecases, the property is expected only on [[Product]] and [[Offer]], rather than [[Thing]]. The general trend in web technology is towards [responsive design](https://en.wikipedia.org/wiki/Responsive_web_design) in which content can be flexibly adapted to a wide range of browsing environments. Pages and sites referenced with the long-established [[url]] property should ideally also be usable on a wide variety of devices, including mobile phones. In most cases, it would be pointless and counter productive to attempt to update all [[url]] markup to use [[mobileUrl]] for more mobile-oriented pages. The property is intended for the case when items (primarily [[Product]] and [[Offer]]) have extra URLs hosted on an additional "mobile site" alongside the main one. It should not be taken as an endorsement of this publication style.
      def mobile_url=(value)
        write_property(:mobile_url, value)
      end

      # The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
      def mpn
        read_property(:mpn)
      end

      # The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
      def mpn=(value)
        write_property(:mpn, value)
      end

      # A pointer to the organization or person making the offer.
      # Inverse-property: `makesOffer`.
      def offered_by
        read_property(:offered_by)
      end

      # A pointer to the organization or person making the offer.
      # Inverse-property: `makesOffer`.
      def offered_by=(value)
        write_property(:offered_by, value)
      end

      # The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\n\nUsage guidelines:\n\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.
      def price
        read_property(:price)
      end

      # The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\n\nUsage guidelines:\n\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.
      def price=(value)
        write_property(:price, value)
      end

      # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def price_currency
        read_property(:price_currency)
      end

      # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def price_currency=(value)
        write_property(:price_currency, value)
      end

      # One or more detailed price specifications, indicating the unit price and delivery or payment charges.
      def price_specification
        read_property(:price_specification)
      end

      # One or more detailed price specifications, indicating the unit price and delivery or payment charges.
      def price_specification=(value)
        write_property(:price_specification, value)
      end

      # The date after which the price is no longer available.
      def price_valid_until
        read_property(:price_valid_until)
      end

      # The date after which the price is no longer available.
      def price_valid_until=(value)
        write_property(:price_valid_until, value)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review
        read_property(:review)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review=(value)
        write_property(:review, value)
      end

      # Review of the item.
      # Superseded by `review`.
      def reviews
        read_property(:reviews)
      end

      # Review of the item.
      # Superseded by `review`.
      def reviews=(value)
        write_property(:reviews, value)
      end

      # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      # Supersedes `vendor`.
      def seller
        read_property(:seller)
      end

      # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      # Supersedes `vendor`.
      def seller=(value)
        write_property(:seller, value)
      end

      # The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer.
      def serial_number
        read_property(:serial_number)
      end

      # The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer.
      def serial_number=(value)
        write_property(:serial_number, value)
      end

      # Indicates information about the shipping policies and options associated with an [[Offer]].
      def shipping_details
        read_property(:shipping_details)
      end

      # Indicates information about the shipping policies and options associated with an [[Offer]].
      def shipping_details=(value)
        write_property(:shipping_details, value)
      end

      # The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
      def sku
        read_property(:sku)
      end

      # The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
      def sku=(value)
        write_property(:sku, value)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier
        read_property(:valid_for_member_tier)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier=(value)
        write_property(:valid_for_member_tier, value)
      end

      # The date when the item becomes valid.
      def valid_from
        read_property(:valid_from)
      end

      # The date when the item becomes valid.
      def valid_from=(value)
        write_property(:valid_from, value)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through
        read_property(:valid_through)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through=(value)
        write_property(:valid_through, value)
      end

      # The warranty promise(s) included in the offer.
      # Supersedes `warrantyPromise`.
      def warranty
        read_property(:warranty)
      end

      # The warranty promise(s) included in the offer.
      # Supersedes `warrantyPromise`.
      def warranty=(value)
        write_property(:warranty, value)
      end
    end
  end
end
