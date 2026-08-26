module SchemaOrg
  module Mixins
    module LodgingBusiness
      include LocalBusiness

      def self.schema_property_definitions
        {
          :amenity_feature => {
            schema_name: "amenityFeature",
            ranges: ["LocationFeatureSpecification"],
          }.freeze,
          :audience => {
            schema_name: "audience",
            ranges: ["Audience"],
          }.freeze,
          :available_language => {
            schema_name: "availableLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :checkin_time => {
            schema_name: "checkinTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :checkout_time => {
            schema_name: "checkoutTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :number_of_rooms => {
            schema_name: "numberOfRooms",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :pets_allowed => {
            schema_name: "petsAllowed",
            ranges: ["Boolean", "Text"],
          }.freeze,
          :star_rating => {
            schema_name: "starRating",
            ranges: ["Rating"],
          }.freeze,
        }.freeze
      end

      def amenity_feature
        read_property(:amenity_feature)
      end

      def amenity_feature=(value)
        write_property(:amenity_feature, value)
      end

      def audience
        read_property(:audience)
      end

      def audience=(value)
        write_property(:audience, value)
      end

      def available_language
        read_property(:available_language)
      end

      def available_language=(value)
        write_property(:available_language, value)
      end

      def checkin_time
        read_property(:checkin_time)
      end

      def checkin_time=(value)
        write_property(:checkin_time, value)
      end

      def checkout_time
        read_property(:checkout_time)
      end

      def checkout_time=(value)
        write_property(:checkout_time, value)
      end

      def number_of_rooms
        read_property(:number_of_rooms)
      end

      def number_of_rooms=(value)
        write_property(:number_of_rooms, value)
      end

      def pets_allowed
        read_property(:pets_allowed)
      end

      def pets_allowed=(value)
        write_property(:pets_allowed, value)
      end

      def star_rating
        read_property(:star_rating)
      end

      def star_rating=(value)
        write_property(:star_rating, value)
      end

    end
  end
end
