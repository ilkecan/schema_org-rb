# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module RsvpAction
      include InformAction

      def self.schema_property_definitions
        {
          additional_number_of_guests: {
            schema_name: "additionalNumberOfGuests",
            schema_url: "https://schema.org/additionalNumberOfGuests",
            comment_lines: ["If responding yes, the number of guests who will attend in addition to the invitee."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          comment: {
            schema_name: "comment",
            schema_url: "https://schema.org/comment",
            comment_lines: ["Comments, typically from users."].freeze,
            ranges: ["Comment"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          rsvp_response: {
            schema_name: "rsvpResponse",
            schema_url: "https://schema.org/rsvpResponse",
            comment_lines: ["The response (yes, no, maybe) to the RSVP."].freeze,
            ranges: ["RsvpResponseType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # If responding yes, the number of guests who will attend in addition to the invitee.
      def additional_number_of_guests
        read_property(:additional_number_of_guests)
      end

      # If responding yes, the number of guests who will attend in addition to the invitee.
      def additional_number_of_guests=(value)
        write_property(:additional_number_of_guests, value)
      end

      # Comments, typically from users.
      def comment
        read_property(:comment)
      end

      # Comments, typically from users.
      def comment=(value)
        write_property(:comment, value)
      end

      # The response (yes, no, maybe) to the RSVP.
      def rsvp_response
        read_property(:rsvp_response)
      end

      # The response (yes, no, maybe) to the RSVP.
      def rsvp_response=(value)
        write_property(:rsvp_response, value)
      end
    end
  end
end
