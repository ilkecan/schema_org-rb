# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Demand
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

      # The amount of time that is required between accepting the offer and the actual usage of the resource or service.
      def advance_booking_requirement
        read_property(:advance_booking_requirement)
      end

      # The amount of time that is required between accepting the offer and the actual usage of the resource or service.
      def advance_booking_requirement=(value)
        write_property(:advance_booking_requirement, value)
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

      # The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
      def mpn
        read_property(:mpn)
      end

      # The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
      def mpn=(value)
        write_property(:mpn, value)
      end

      # One or more detailed price specifications, indicating the unit price and delivery or payment charges.
      def price_specification
        read_property(:price_specification)
      end

      # One or more detailed price specifications, indicating the unit price and delivery or payment charges.
      def price_specification=(value)
        write_property(:price_specification, value)
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

      # The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
      def sku
        read_property(:sku)
      end

      # The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
      def sku=(value)
        write_property(:sku, value)
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
