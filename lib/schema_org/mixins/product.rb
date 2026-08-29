# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Product
      include Thing

      def self.schema_property_definitions
        {
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
          audience: {
            schema_name: "audience",
            schema_url: "https://schema.org/audience",
            comment_lines: ["An intended audience, i.e. a group for whom something was created."].freeze,
            ranges: ["Audience"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["serviceAudience"].freeze
          }.freeze,
          award: {
            schema_name: "award",
            schema_url: "https://schema.org/award",
            comment_lines: ["An award won by or for this item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["awards"].freeze
          }.freeze,
          awards: {
            schema_name: "awards",
            schema_url: "https://schema.org/awards",
            comment_lines: ["Awards won by or for this item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "award",
            supersedes: nil
          }.freeze,
          brand: {
            schema_name: "brand",
            schema_url: "https://schema.org/brand",
            comment_lines: ["The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person."].freeze,
            ranges: ["Brand", "Organization"].freeze,
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
          color: {
            schema_name: "color",
            schema_url: "https://schema.org/color",
            comment_lines: ["The color of the product."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          color_swatch: {
            schema_name: "colorSwatch",
            schema_url: "https://schema.org/colorSwatch",
            comment_lines: ["A color swatch image, visualizing the color of a [[Product]]. Should match the textual description specified in the [[color]] property. This can be a URL or a fully described ImageObject."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          country_of_assembly: {
            schema_name: "countryOfAssembly",
            schema_url: "https://schema.org/countryOfAssembly",
            comment_lines: ["The place where the product was assembled."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          country_of_last_processing: {
            schema_name: "countryOfLastProcessing",
            schema_url: "https://schema.org/countryOfLastProcessing",
            comment_lines: ["The place where the item (typically [[Product]]) was last processed and tested before importation."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          country_of_origin: {
            schema_name: "countryOfOrigin",
            schema_url: "https://schema.org/countryOfOrigin",
            comment_lines: ["The country of origin of something, including products as well as creative  works such as movie and TV content.", "", "In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.", "", "In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here."].freeze,
            ranges: ["Country"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          depth: {
            schema_name: "depth",
            schema_url: "https://schema.org/depth",
            comment_lines: ["The depth of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          display_location: {
            schema_name: "displayLocation",
            schema_url: "https://schema.org/displayLocation",
            comment_lines: ["The location at which an item can be viewed or experienced in-person."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          funding: {
            schema_name: "funding",
            schema_url: "https://schema.org/funding",
            comment_lines: ["A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."].freeze,
            ranges: ["Grant"].freeze,
            external_ranges: [].freeze,
            inverse_of: "fundedItem",
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
          has_certification: {
            schema_name: "hasCertification",
            schema_url: "https://schema.org/hasCertification",
            comment_lines: ["Certification information about a product, organization, service, place, or person."].freeze,
            ranges: ["Certification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_energy_consumption_details: {
            schema_name: "hasEnergyConsumptionDetails",
            schema_url: "https://schema.org/hasEnergyConsumptionDetails",
            comment_lines: ["Defines the energy efficiency Category (also known as \"class\" or \"rating\") for a product according to an international energy efficiency standard."].freeze,
            ranges: ["EnergyConsumptionDetails"].freeze,
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
            supersedes: ["hasProductReturnPolicy"].freeze
          }.freeze,
          has_product_return_policy: {
            schema_name: "hasProductReturnPolicy",
            schema_url: "https://schema.org/hasProductReturnPolicy",
            comment_lines: ["Indicates a ProductReturnPolicy that may be applicable."].freeze,
            ranges: ["ProductReturnPolicy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "hasMerchantReturnPolicy",
            supersedes: nil
          }.freeze,
          height: {
            schema_name: "height",
            schema_url: "https://schema.org/height",
            comment_lines: ["The height of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_product_group_with_id: {
            schema_name: "inProductGroupWithID",
            schema_url: "https://schema.org/inProductGroupWithID",
            comment_lines: ["Indicates the [[productGroupID]] for a [[ProductGroup]] that this product [[isVariantOf]]."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_accessory_or_spare_part_for: {
            schema_name: "isAccessoryOrSparePartFor",
            schema_url: "https://schema.org/isAccessoryOrSparePartFor",
            comment_lines: ["A pointer to another product (or multiple products) for which this product is an accessory or spare part."].freeze,
            ranges: ["Product"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_consumable_for: {
            schema_name: "isConsumableFor",
            schema_url: "https://schema.org/isConsumableFor",
            comment_lines: ["A pointer to another product (or multiple products) for which this product is a consumable."].freeze,
            ranges: ["Product"].freeze,
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
          is_related_to: {
            schema_name: "isRelatedTo",
            schema_url: "https://schema.org/isRelatedTo",
            comment_lines: ["A pointer to another, somehow related product (or multiple products)."].freeze,
            ranges: ["Product", "Service"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_similar_to: {
            schema_name: "isSimilarTo",
            schema_url: "https://schema.org/isSimilarTo",
            comment_lines: ["A pointer to another, functionally similar product (or multiple products)."].freeze,
            ranges: ["Product", "Service"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_variant_of: {
            schema_name: "isVariantOf",
            schema_url: "https://schema.org/isVariantOf",
            comment_lines: ["Indicates the kind of product that this is a variant of. In the case of [[ProductModel]], this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a [[ProductGroup]], the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with [[ProductGroup]], this property can apply to any [[Product]] included in the group."].freeze,
            ranges: ["ProductGroup", "ProductModel"].freeze,
            external_ranges: [].freeze,
            inverse_of: "hasVariant",
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
          keywords: {
            schema_name: "keywords",
            schema_url: "https://schema.org/keywords",
            comment_lines: ["Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          logo: {
            schema_name: "logo",
            schema_url: "https://schema.org/logo",
            comment_lines: ["An associated logo."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          manufacturer: {
            schema_name: "manufacturer",
            schema_url: "https://schema.org/manufacturer",
            comment_lines: ["The manufacturer of the product."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          material: {
            schema_name: "material",
            schema_url: "https://schema.org/material",
            comment_lines: ["A material that something is made from, e.g. leather, wool, cotton, paper."].freeze,
            ranges: ["Product", "Text", "URL"].freeze,
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
          model: {
            schema_name: "model",
            schema_url: "https://schema.org/model",
            comment_lines: ["The model of the product. Use with the URL of a ProductModel or a textual representation of the model identifier. The URL of the ProductModel can be from an external source. It is recommended to additionally provide strong product identifiers via the gtin8/gtin13/gtin14 and mpn properties."].freeze,
            ranges: ["ProductModel", "Text"].freeze,
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
          negative_notes: {
            schema_name: "negativeNotes",
            schema_url: "https://schema.org/negativeNotes",
            comment_lines: ["Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry", "", "In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described. Since product descriptions", "tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on [[Product]].", "", "The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list)."].freeze,
            ranges: ["ItemList", "ListItem", "Text", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          nsn: {
            schema_name: "nsn",
            schema_url: "https://schema.org/nsn",
            comment_lines: ["Indicates the [NATO stock number](https://en.wikipedia.org/wiki/NATO_Stock_Number) (nsn) of a [[Product]]."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          offers: {
            schema_name: "offers",
            schema_url: "https://schema.org/offers",
            comment_lines: ["An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer."].freeze,
            ranges: ["Demand", "Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: "itemOffered",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pattern: {
            schema_name: "pattern",
            schema_url: "https://schema.org/pattern",
            comment_lines: ["A pattern that something has, for example 'polka dot', 'striped', 'Canadian flag'. Values are typically expressed as text, although links to controlled value schemes are also supported."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          positive_notes: {
            schema_name: "positiveNotes",
            schema_url: "https://schema.org/positiveNotes",
            comment_lines: ["Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.", "", "In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described.", "", "The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list)."].freeze,
            ranges: ["ItemList", "ListItem", "Text", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          product_id: {
            schema_name: "productID",
            schema_url: "https://schema.org/productID",
            comment_lines: ["The product identifier, such as ISBN. For example: ``` meta itemprop=\"productID\" content=\"isbn:123-456-789\" ```."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          production_date: {
            schema_name: "productionDate",
            schema_url: "https://schema.org/productionDate",
            comment_lines: ["The date of production of the item, e.g. vehicle."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          purchase_date: {
            schema_name: "purchaseDate",
            schema_url: "https://schema.org/purchaseDate",
            comment_lines: ["The date the item, e.g. vehicle, was purchased by the current owner."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          release_date: {
            schema_name: "releaseDate",
            schema_url: "https://schema.org/releaseDate",
            comment_lines: ["The release date of a product or product model. This can be used to distinguish the exact variant of a product."].freeze,
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
            supersedes: ["reviews"].freeze
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
          size: {
            schema_name: "size",
            schema_url: "https://schema.org/size",
            comment_lines: ["A standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable."].freeze,
            ranges: ["DefinedTerm", "QuantitativeValue", "SizeSpecification", "Text"].freeze,
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
          slogan: {
            schema_name: "slogan",
            schema_url: "https://schema.org/slogan",
            comment_lines: ["A slogan or motto associated with the item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          weight: {
            schema_name: "weight",
            schema_url: "https://schema.org/weight",
            comment_lines: ["The weight of the product or person."].freeze,
            ranges: ["Mass", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          width: {
            schema_name: "width",
            schema_url: "https://schema.org/width",
            comment_lines: ["The width of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property
        read_property(:additional_property)
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property=(value)
        write_property(:additional_property, value)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating
        read_property(:aggregate_rating)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
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

      # An intended audience, i.e. a group for whom something was created.
      # Supersedes `serviceAudience`.
      def audience
        read_property(:audience)
      end

      # An intended audience, i.e. a group for whom something was created.
      # Supersedes `serviceAudience`.
      def audience=(value)
        write_property(:audience, value)
      end

      # An award won by or for this item.
      # Supersedes `awards`.
      def award
        read_property(:award)
      end

      # An award won by or for this item.
      # Supersedes `awards`.
      def award=(value)
        write_property(:award, value)
      end

      # Awards won by or for this item.
      # Superseded by `award`.
      def awards
        read_property(:awards)
      end

      # Awards won by or for this item.
      # Superseded by `award`.
      def awards=(value)
        write_property(:awards, value)
      end

      # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
      def brand
        read_property(:brand)
      end

      # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
      def brand=(value)
        write_property(:brand, value)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category
        read_property(:category)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category=(value)
        write_property(:category, value)
      end

      # The color of the product.
      def color
        read_property(:color)
      end

      # The color of the product.
      def color=(value)
        write_property(:color, value)
      end

      # A color swatch image, visualizing the color of a [[Product]]. Should match the textual description specified in the [[color]] property. This can be a URL or a fully described ImageObject.
      def color_swatch
        read_property(:color_swatch)
      end

      # A color swatch image, visualizing the color of a [[Product]]. Should match the textual description specified in the [[color]] property. This can be a URL or a fully described ImageObject.
      def color_swatch=(value)
        write_property(:color_swatch, value)
      end

      # The place where the product was assembled.
      def country_of_assembly
        read_property(:country_of_assembly)
      end

      # The place where the product was assembled.
      def country_of_assembly=(value)
        write_property(:country_of_assembly, value)
      end

      # The place where the item (typically [[Product]]) was last processed and tested before importation.
      def country_of_last_processing
        read_property(:country_of_last_processing)
      end

      # The place where the item (typically [[Product]]) was last processed and tested before importation.
      def country_of_last_processing=(value)
        write_property(:country_of_last_processing, value)
      end

      # The country of origin of something, including products as well as creative  works such as movie and TV content.
      #
      # In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.
      #
      # In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
      def country_of_origin
        read_property(:country_of_origin)
      end

      # The country of origin of something, including products as well as creative  works such as movie and TV content.
      #
      # In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.
      #
      # In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
      def country_of_origin=(value)
        write_property(:country_of_origin, value)
      end

      # The depth of the item.
      def depth
        read_property(:depth)
      end

      # The depth of the item.
      def depth=(value)
        write_property(:depth, value)
      end

      # The location at which an item can be viewed or experienced in-person.
      def display_location
        read_property(:display_location)
      end

      # The location at which an item can be viewed or experienced in-person.
      def display_location=(value)
        write_property(:display_location, value)
      end

      # A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].
      # Inverse-property: `fundedItem`.
      def funding
        read_property(:funding)
      end

      # A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].
      # Inverse-property: `fundedItem`.
      def funding=(value)
        write_property(:funding, value)
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

      # Certification information about a product, organization, service, place, or person.
      def has_certification
        read_property(:has_certification)
      end

      # Certification information about a product, organization, service, place, or person.
      def has_certification=(value)
        write_property(:has_certification, value)
      end

      # Defines the energy efficiency Category (also known as "class" or "rating") for a product according to an international energy efficiency standard.
      def has_energy_consumption_details
        read_property(:has_energy_consumption_details)
      end

      # Defines the energy efficiency Category (also known as "class" or "rating") for a product according to an international energy efficiency standard.
      def has_energy_consumption_details=(value)
        write_property(:has_energy_consumption_details, value)
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

      # Indicates a ProductReturnPolicy that may be applicable.
      # Superseded by `hasMerchantReturnPolicy`.
      def has_product_return_policy
        read_property(:has_product_return_policy)
      end

      # Indicates a ProductReturnPolicy that may be applicable.
      # Superseded by `hasMerchantReturnPolicy`.
      def has_product_return_policy=(value)
        write_property(:has_product_return_policy, value)
      end

      # The height of the item.
      def height
        read_property(:height)
      end

      # The height of the item.
      def height=(value)
        write_property(:height, value)
      end

      # Indicates the [[productGroupID]] for a [[ProductGroup]] that this product [[isVariantOf]].
      def in_product_group_with_id
        read_property(:in_product_group_with_id)
      end

      # Indicates the [[productGroupID]] for a [[ProductGroup]] that this product [[isVariantOf]].
      def in_product_group_with_id=(value)
        write_property(:in_product_group_with_id, value)
      end

      # A pointer to another product (or multiple products) for which this product is an accessory or spare part.
      def is_accessory_or_spare_part_for
        read_property(:is_accessory_or_spare_part_for)
      end

      # A pointer to another product (or multiple products) for which this product is an accessory or spare part.
      def is_accessory_or_spare_part_for=(value)
        write_property(:is_accessory_or_spare_part_for, value)
      end

      # A pointer to another product (or multiple products) for which this product is a consumable.
      def is_consumable_for
        read_property(:is_consumable_for)
      end

      # A pointer to another product (or multiple products) for which this product is a consumable.
      def is_consumable_for=(value)
        write_property(:is_consumable_for, value)
      end

      # Indicates whether this content is family friendly.
      def is_family_friendly
        read_property(:is_family_friendly)
      end

      # Indicates whether this content is family friendly.
      def is_family_friendly=(value)
        write_property(:is_family_friendly, value)
      end

      # A pointer to another, somehow related product (or multiple products).
      def is_related_to
        read_property(:is_related_to)
      end

      # A pointer to another, somehow related product (or multiple products).
      def is_related_to=(value)
        write_property(:is_related_to, value)
      end

      # A pointer to another, functionally similar product (or multiple products).
      def is_similar_to
        read_property(:is_similar_to)
      end

      # A pointer to another, functionally similar product (or multiple products).
      def is_similar_to=(value)
        write_property(:is_similar_to, value)
      end

      # Indicates the kind of product that this is a variant of. In the case of [[ProductModel]], this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a [[ProductGroup]], the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with [[ProductGroup]], this property can apply to any [[Product]] included in the group.
      # Inverse-property: `hasVariant`.
      def is_variant_of
        read_property(:is_variant_of)
      end

      # Indicates the kind of product that this is a variant of. In the case of [[ProductModel]], this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a [[ProductGroup]], the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with [[ProductGroup]], this property can apply to any [[Product]] included in the group.
      # Inverse-property: `hasVariant`.
      def is_variant_of=(value)
        write_property(:is_variant_of, value)
      end

      # A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
      def item_condition
        read_property(:item_condition)
      end

      # A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
      def item_condition=(value)
        write_property(:item_condition, value)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords
        read_property(:keywords)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords=(value)
        write_property(:keywords, value)
      end

      # An associated logo.
      def logo
        read_property(:logo)
      end

      # An associated logo.
      def logo=(value)
        write_property(:logo, value)
      end

      # The manufacturer of the product.
      def manufacturer
        read_property(:manufacturer)
      end

      # The manufacturer of the product.
      def manufacturer=(value)
        write_property(:manufacturer, value)
      end

      # A material that something is made from, e.g. leather, wool, cotton, paper.
      def material
        read_property(:material)
      end

      # A material that something is made from, e.g. leather, wool, cotton, paper.
      def material=(value)
        write_property(:material, value)
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

      # The model of the product. Use with the URL of a ProductModel or a textual representation of the model identifier. The URL of the ProductModel can be from an external source. It is recommended to additionally provide strong product identifiers via the gtin8/gtin13/gtin14 and mpn properties.
      def model
        read_property(:model)
      end

      # The model of the product. Use with the URL of a ProductModel or a textual representation of the model identifier. The URL of the ProductModel can be from an external source. It is recommended to additionally provide strong product identifiers via the gtin8/gtin13/gtin14 and mpn properties.
      def model=(value)
        write_property(:model, value)
      end

      # The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
      def mpn
        read_property(:mpn)
      end

      # The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
      def mpn=(value)
        write_property(:mpn, value)
      end

      # Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry
      #
      # In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described. Since product descriptions
      # tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on [[Product]].
      #
      # The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list).
      def negative_notes
        read_property(:negative_notes)
      end

      # Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry
      #
      # In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described. Since product descriptions
      # tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on [[Product]].
      #
      # The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list).
      def negative_notes=(value)
        write_property(:negative_notes, value)
      end

      # Indicates the [NATO stock number](https://en.wikipedia.org/wiki/NATO_Stock_Number) (nsn) of a [[Product]].
      def nsn
        read_property(:nsn)
      end

      # Indicates the [NATO stock number](https://en.wikipedia.org/wiki/NATO_Stock_Number) (nsn) of a [[Product]].
      def nsn=(value)
        write_property(:nsn, value)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers
        read_property(:offers)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers=(value)
        write_property(:offers, value)
      end

      # A pattern that something has, for example 'polka dot', 'striped', 'Canadian flag'. Values are typically expressed as text, although links to controlled value schemes are also supported.
      def pattern
        read_property(:pattern)
      end

      # A pattern that something has, for example 'polka dot', 'striped', 'Canadian flag'. Values are typically expressed as text, although links to controlled value schemes are also supported.
      def pattern=(value)
        write_property(:pattern, value)
      end

      # Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.
      #
      # In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described.
      #
      # The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list).
      def positive_notes
        read_property(:positive_notes)
      end

      # Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.
      #
      # In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described.
      #
      # The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list).
      def positive_notes=(value)
        write_property(:positive_notes, value)
      end

      # The product identifier, such as ISBN. For example: ``` meta itemprop="productID" content="isbn:123-456-789" ```.
      def product_id
        read_property(:product_id)
      end

      # The product identifier, such as ISBN. For example: ``` meta itemprop="productID" content="isbn:123-456-789" ```.
      def product_id=(value)
        write_property(:product_id, value)
      end

      # The date of production of the item, e.g. vehicle.
      def production_date
        read_property(:production_date)
      end

      # The date of production of the item, e.g. vehicle.
      def production_date=(value)
        write_property(:production_date, value)
      end

      # The date the item, e.g. vehicle, was purchased by the current owner.
      def purchase_date
        read_property(:purchase_date)
      end

      # The date the item, e.g. vehicle, was purchased by the current owner.
      def purchase_date=(value)
        write_property(:purchase_date, value)
      end

      # The release date of a product or product model. This can be used to distinguish the exact variant of a product.
      def release_date
        read_property(:release_date)
      end

      # The release date of a product or product model. This can be used to distinguish the exact variant of a product.
      def release_date=(value)
        write_property(:release_date, value)
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

      # A standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable.
      def size
        read_property(:size)
      end

      # A standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured [[SizeSpecification]]; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable.
      def size=(value)
        write_property(:size, value)
      end

      # The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
      def sku
        read_property(:sku)
      end

      # The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
      def sku=(value)
        write_property(:sku, value)
      end

      # A slogan or motto associated with the item.
      def slogan
        read_property(:slogan)
      end

      # A slogan or motto associated with the item.
      def slogan=(value)
        write_property(:slogan, value)
      end

      # The weight of the product or person.
      def weight
        read_property(:weight)
      end

      # The weight of the product or person.
      def weight=(value)
        write_property(:weight, value)
      end

      # The width of the item.
      def width
        read_property(:width)
      end

      # The width of the item.
      def width=(value)
        write_property(:width, value)
      end
    end
  end
end
