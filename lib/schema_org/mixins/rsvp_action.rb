module SchemaOrg
  module Mixins
    module RsvpAction
      include InformAction

      def self.schema_property_definitions
        {
          :additional_number_of_guests => {
            schema_name: "additionalNumberOfGuests",
            ranges: ["Number"],
          }.freeze,
          :comment => {
            schema_name: "comment",
            ranges: ["Comment"],
          }.freeze,
          :rsvp_response => {
            schema_name: "rsvpResponse",
            ranges: ["RsvpResponseType"],
          }.freeze,
        }.freeze
      end

      def additional_number_of_guests
        read_property(:additional_number_of_guests)
      end

      def additional_number_of_guests=(value)
        write_property(:additional_number_of_guests, value)
      end

      def comment
        read_property(:comment)
      end

      def comment=(value)
        write_property(:comment, value)
      end

      def rsvp_response
        read_property(:rsvp_response)
      end

      def rsvp_response=(value)
        write_property(:rsvp_response, value)
      end

    end
  end
end
