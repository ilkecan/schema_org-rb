# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module LodgingBusiness
      include LocalBusiness

      def self.schema_property_definitions
        {
          amenity_feature: {
            schema_name: "amenityFeature",
            schema_url: "https://schema.org/amenityFeature",
            comment_lines: ["An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs."].freeze,
            ranges: ["LocationFeatureSpecification"].freeze,
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
          available_language: {
            schema_name: "availableLanguage",
            schema_url: "https://schema.org/availableLanguage",
            comment_lines: ["A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]]."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          checkin_time: {
            schema_name: "checkinTime",
            schema_url: "https://schema.org/checkinTime",
            comment_lines: ["The earliest someone may check into a lodging establishment."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          checkout_time: {
            schema_name: "checkoutTime",
            schema_url: "https://schema.org/checkoutTime",
            comment_lines: ["The latest someone may check out of a lodging establishment."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_rooms: {
            schema_name: "numberOfRooms",
            schema_url: "https://schema.org/numberOfRooms",
            comment_lines: ["The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.", "Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pets_allowed: {
            schema_name: "petsAllowed",
            schema_url: "https://schema.org/petsAllowed",
            comment_lines: ["Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value."].freeze,
            ranges: ["Boolean", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          star_rating: {
            schema_name: "starRating",
            schema_url: "https://schema.org/starRating",
            comment_lines: ["An official rating for a lodging business or food establishment, e.g. from national associations or standards bodies. Use the author property to indicate the rating organization, e.g. as an Organization with name such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars)."].freeze,
            ranges: ["Rating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
      def amenity_feature
        read_property(:amenity_feature)
      end

      # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
      def amenity_feature=(value)
        write_property(:amenity_feature, value)
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

      # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
      def available_language
        read_property(:available_language)
      end

      # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
      def available_language=(value)
        write_property(:available_language, value)
      end

      # The earliest someone may check into a lodging establishment.
      def checkin_time
        read_property(:checkin_time)
      end

      # The earliest someone may check into a lodging establishment.
      def checkin_time=(value)
        write_property(:checkin_time, value)
      end

      # The latest someone may check out of a lodging establishment.
      def checkout_time
        read_property(:checkout_time)
      end

      # The latest someone may check out of a lodging establishment.
      def checkout_time=(value)
        write_property(:checkout_time, value)
      end

      # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.
      # Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
      def number_of_rooms
        read_property(:number_of_rooms)
      end

      # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.
      # Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
      def number_of_rooms=(value)
        write_property(:number_of_rooms, value)
      end

      # Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value.
      def pets_allowed
        read_property(:pets_allowed)
      end

      # Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value.
      def pets_allowed=(value)
        write_property(:pets_allowed, value)
      end

      # An official rating for a lodging business or food establishment, e.g. from national associations or standards bodies. Use the author property to indicate the rating organization, e.g. as an Organization with name such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars).
      def star_rating
        read_property(:star_rating)
      end

      # An official rating for a lodging business or food establishment, e.g. from national associations or standards bodies. Use the author property to indicate the rating organization, e.g. as an Organization with name such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars).
      def star_rating=(value)
        write_property(:star_rating, value)
      end
    end
  end
end
