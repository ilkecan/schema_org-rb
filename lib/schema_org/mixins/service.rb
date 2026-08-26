module SchemaOrg
  module Mixins
    module Service
      include Intangible

      def self.schema_property_definitions
        {
          :aggregate_rating => {
            schema_name: "aggregateRating",
            ranges: ["AggregateRating"],
          }.freeze,
          :area_served => {
            schema_name: "areaServed",
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"],
          }.freeze,
          :audience => {
            schema_name: "audience",
            ranges: ["Audience"],
          }.freeze,
          :available_channel => {
            schema_name: "availableChannel",
            ranges: ["ServiceChannel"],
          }.freeze,
          :award => {
            schema_name: "award",
            ranges: ["Text"],
          }.freeze,
          :brand => {
            schema_name: "brand",
            ranges: ["Brand", "Organization"],
          }.freeze,
          :broker => {
            schema_name: "broker",
            ranges: ["Organization", "Person"],
          }.freeze,
          :category => {
            schema_name: "category",
            ranges: ["Text", "Thing"],
          }.freeze,
          :has_offer_catalog => {
            schema_name: "hasOfferCatalog",
            ranges: ["OfferCatalog"],
          }.freeze,
          :hours_available => {
            schema_name: "hoursAvailable",
            ranges: ["OpeningHoursSpecification"],
          }.freeze,
          :is_related_to => {
            schema_name: "isRelatedTo",
            ranges: ["Product", "Service"],
          }.freeze,
          :is_similar_to => {
            schema_name: "isSimilarTo",
            ranges: ["Product", "Service"],
          }.freeze,
          :logo => {
            schema_name: "logo",
            ranges: ["ImageObject", "URL"],
          }.freeze,
          :offers => {
            schema_name: "offers",
            ranges: ["Demand", "Offer"],
          }.freeze,
          :produces => {
            schema_name: "produces",
            ranges: ["Thing"],
          }.freeze,
          :provider => {
            schema_name: "provider",
            ranges: ["Organization", "Person"],
          }.freeze,
          :provider_mobility => {
            schema_name: "providerMobility",
            ranges: ["Text"],
          }.freeze,
          :review => {
            schema_name: "review",
            ranges: ["Review"],
          }.freeze,
          :service_area => {
            schema_name: "serviceArea",
            ranges: ["AdministrativeArea", "GeoShape", "Place"],
          }.freeze,
          :service_audience => {
            schema_name: "serviceAudience",
            ranges: ["Audience"],
          }.freeze,
          :service_output => {
            schema_name: "serviceOutput",
            ranges: ["Thing"],
          }.freeze,
          :service_type => {
            schema_name: "serviceType",
            ranges: ["Text"],
          }.freeze,
          :slogan => {
            schema_name: "slogan",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def aggregate_rating
        read_property(:aggregate_rating)
      end

      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      def area_served
        read_property(:area_served)
      end

      def area_served=(value)
        write_property(:area_served, value)
      end

      def audience
        read_property(:audience)
      end

      def audience=(value)
        write_property(:audience, value)
      end

      def available_channel
        read_property(:available_channel)
      end

      def available_channel=(value)
        write_property(:available_channel, value)
      end

      def award
        read_property(:award)
      end

      def award=(value)
        write_property(:award, value)
      end

      def brand
        read_property(:brand)
      end

      def brand=(value)
        write_property(:brand, value)
      end

      def broker
        read_property(:broker)
      end

      def broker=(value)
        write_property(:broker, value)
      end

      def category
        read_property(:category)
      end

      def category=(value)
        write_property(:category, value)
      end

      def has_offer_catalog
        read_property(:has_offer_catalog)
      end

      def has_offer_catalog=(value)
        write_property(:has_offer_catalog, value)
      end

      def hours_available
        read_property(:hours_available)
      end

      def hours_available=(value)
        write_property(:hours_available, value)
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

      def logo
        read_property(:logo)
      end

      def logo=(value)
        write_property(:logo, value)
      end

      def offers
        read_property(:offers)
      end

      def offers=(value)
        write_property(:offers, value)
      end

      def produces
        read_property(:produces)
      end

      def produces=(value)
        write_property(:produces, value)
      end

      def provider
        read_property(:provider)
      end

      def provider=(value)
        write_property(:provider, value)
      end

      def provider_mobility
        read_property(:provider_mobility)
      end

      def provider_mobility=(value)
        write_property(:provider_mobility, value)
      end

      def review
        read_property(:review)
      end

      def review=(value)
        write_property(:review, value)
      end

      def service_area
        read_property(:service_area)
      end

      def service_area=(value)
        write_property(:service_area, value)
      end

      def service_audience
        read_property(:service_audience)
      end

      def service_audience=(value)
        write_property(:service_audience, value)
      end

      def service_output
        read_property(:service_output)
      end

      def service_output=(value)
        write_property(:service_output, value)
      end

      def service_type
        read_property(:service_type)
      end

      def service_type=(value)
        write_property(:service_type, value)
      end

      def slogan
        read_property(:slogan)
      end

      def slogan=(value)
        write_property(:slogan, value)
      end

    end
  end
end
