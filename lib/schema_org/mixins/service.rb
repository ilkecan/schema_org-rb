# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Service
      include Intangible

      def self.schema_property_definitions
        {
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
            supersedes: ["serviceArea"].freeze
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
          available_channel: {
            schema_name: "availableChannel",
            schema_url: "https://schema.org/availableChannel",
            comment_lines: ["A means of accessing the service (e.g. a phone bank, a web site, a location, etc.)."].freeze,
            ranges: ["ServiceChannel"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
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
          broker: {
            schema_name: "broker",
            schema_url: "https://schema.org/broker",
            comment_lines: ["An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["bookingAgent"].freeze
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
          has_offer_catalog: {
            schema_name: "hasOfferCatalog",
            schema_url: "https://schema.org/hasOfferCatalog",
            comment_lines: ["Indicates an OfferCatalog listing for this Organization, Person, or Service."].freeze,
            ranges: ["OfferCatalog"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          hours_available: {
            schema_name: "hoursAvailable",
            schema_url: "https://schema.org/hoursAvailable",
            comment_lines: ["The hours during which this service or contact is available."].freeze,
            ranges: ["OpeningHoursSpecification"].freeze,
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
          produces: {
            schema_name: "produces",
            schema_url: "https://schema.org/produces",
            comment_lines: ["The tangible thing generated by the service, e.g. a passport, permit, etc."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "serviceOutput",
            supersedes: nil
          }.freeze,
          provider: {
            schema_name: "provider",
            schema_url: "https://schema.org/provider",
            comment_lines: ["The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["carrier"].freeze
          }.freeze,
          provider_mobility: {
            schema_name: "providerMobility",
            schema_url: "https://schema.org/providerMobility",
            comment_lines: ["Indicates the mobility of a provided service (e.g. 'static', 'dynamic')."].freeze,
            ranges: ["Text"].freeze,
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
          service_area: {
            schema_name: "serviceArea",
            schema_url: "https://schema.org/serviceArea",
            comment_lines: ["The geographic area where the service is provided."].freeze,
            ranges: ["AdministrativeArea", "GeoShape", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "areaServed",
            supersedes: ["area"].freeze
          }.freeze,
          service_audience: {
            schema_name: "serviceAudience",
            schema_url: "https://schema.org/serviceAudience",
            comment_lines: ["The audience eligible for this service."].freeze,
            ranges: ["Audience"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "audience",
            supersedes: nil
          }.freeze,
          service_output: {
            schema_name: "serviceOutput",
            schema_url: "https://schema.org/serviceOutput",
            comment_lines: ["The tangible thing generated by the service, e.g. a passport, permit, etc."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["produces"].freeze
          }.freeze,
          service_type: {
            schema_name: "serviceType",
            schema_url: "https://schema.org/serviceType",
            comment_lines: ["The type of service being offered, e.g. veterans' benefits, emergency relief, etc."].freeze,
            ranges: ["GovernmentBenefitsType", "Text"].freeze,
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
          terms_of_service: {
            schema_name: "termsOfService",
            schema_url: "https://schema.org/termsOfService",
            comment_lines: ["Human-readable terms of service documentation."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
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

      # A means of accessing the service (e.g. a phone bank, a web site, a location, etc.).
      def available_channel
        read_property(:available_channel)
      end

      # A means of accessing the service (e.g. a phone bank, a web site, a location, etc.).
      def available_channel=(value)
        write_property(:available_channel, value)
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

      # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
      def brand
        read_property(:brand)
      end

      # The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
      def brand=(value)
        write_property(:brand, value)
      end

      # An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred.
      # Supersedes `bookingAgent`.
      def broker
        read_property(:broker)
      end

      # An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred.
      # Supersedes `bookingAgent`.
      def broker=(value)
        write_property(:broker, value)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category
        read_property(:category)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category=(value)
        write_property(:category, value)
      end

      # Certification information about a product, organization, service, place, or person.
      def has_certification
        read_property(:has_certification)
      end

      # Certification information about a product, organization, service, place, or person.
      def has_certification=(value)
        write_property(:has_certification, value)
      end

      # Indicates an OfferCatalog listing for this Organization, Person, or Service.
      def has_offer_catalog
        read_property(:has_offer_catalog)
      end

      # Indicates an OfferCatalog listing for this Organization, Person, or Service.
      def has_offer_catalog=(value)
        write_property(:has_offer_catalog, value)
      end

      # The hours during which this service or contact is available.
      def hours_available
        read_property(:hours_available)
      end

      # The hours during which this service or contact is available.
      def hours_available=(value)
        write_property(:hours_available, value)
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

      # An associated logo.
      def logo
        read_property(:logo)
      end

      # An associated logo.
      def logo=(value)
        write_property(:logo, value)
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

      # The tangible thing generated by the service, e.g. a passport, permit, etc.
      # Superseded by `serviceOutput`.
      def produces
        read_property(:produces)
      end

      # The tangible thing generated by the service, e.g. a passport, permit, etc.
      # Superseded by `serviceOutput`.
      def produces=(value)
        write_property(:produces, value)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider
        read_property(:provider)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider=(value)
        write_property(:provider, value)
      end

      # Indicates the mobility of a provided service (e.g. 'static', 'dynamic').
      def provider_mobility
        read_property(:provider_mobility)
      end

      # Indicates the mobility of a provided service (e.g. 'static', 'dynamic').
      def provider_mobility=(value)
        write_property(:provider_mobility, value)
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

      # The geographic area where the service is provided.
      # Supersedes `area`.
      # Superseded by `areaServed`.
      def service_area
        read_property(:service_area)
      end

      # The geographic area where the service is provided.
      # Supersedes `area`.
      # Superseded by `areaServed`.
      def service_area=(value)
        write_property(:service_area, value)
      end

      # The audience eligible for this service.
      # Superseded by `audience`.
      def service_audience
        read_property(:service_audience)
      end

      # The audience eligible for this service.
      # Superseded by `audience`.
      def service_audience=(value)
        write_property(:service_audience, value)
      end

      # The tangible thing generated by the service, e.g. a passport, permit, etc.
      # Supersedes `produces`.
      def service_output
        read_property(:service_output)
      end

      # The tangible thing generated by the service, e.g. a passport, permit, etc.
      # Supersedes `produces`.
      def service_output=(value)
        write_property(:service_output, value)
      end

      # The type of service being offered, e.g. veterans' benefits, emergency relief, etc.
      def service_type
        read_property(:service_type)
      end

      # The type of service being offered, e.g. veterans' benefits, emergency relief, etc.
      def service_type=(value)
        write_property(:service_type, value)
      end

      # A slogan or motto associated with the item.
      def slogan
        read_property(:slogan)
      end

      # A slogan or motto associated with the item.
      def slogan=(value)
        write_property(:slogan, value)
      end

      # Human-readable terms of service documentation.
      def terms_of_service
        read_property(:terms_of_service)
      end

      # Human-readable terms of service documentation.
      def terms_of_service=(value)
        write_property(:terms_of_service, value)
      end
    end
  end
end
