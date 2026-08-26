# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module FlightReservation
      include Reservation

      def self.schema_property_definitions
        {
          boarding_group: {
            schema_name: "boardingGroup",
            schema_url: "https://schema.org/boardingGroup",
            comment_lines: ["The airline-specific indicator of boarding order / preference."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          passenger_priority_status: {
            schema_name: "passengerPriorityStatus",
            schema_url: "https://schema.org/passengerPriorityStatus",
            comment_lines: ["The priority status assigned to a passenger for security or boarding (e.g. FastTrack or Priority)."].freeze,
            ranges: ["QualitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          passenger_sequence_number: {
            schema_name: "passengerSequenceNumber",
            schema_url: "https://schema.org/passengerSequenceNumber",
            comment_lines: ["The passenger's sequence number as assigned by the airline."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          security_screening: {
            schema_name: "securityScreening",
            schema_url: "https://schema.org/securityScreening",
            comment_lines: ["The type of security screening the passenger is subject to."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The airline-specific indicator of boarding order / preference.
      def boarding_group
        read_property(:boarding_group)
      end

      # The airline-specific indicator of boarding order / preference.
      def boarding_group=(value)
        write_property(:boarding_group, value)
      end

      # The priority status assigned to a passenger for security or boarding (e.g. FastTrack or Priority).
      def passenger_priority_status
        read_property(:passenger_priority_status)
      end

      # The priority status assigned to a passenger for security or boarding (e.g. FastTrack or Priority).
      def passenger_priority_status=(value)
        write_property(:passenger_priority_status, value)
      end

      # The passenger's sequence number as assigned by the airline.
      def passenger_sequence_number
        read_property(:passenger_sequence_number)
      end

      # The passenger's sequence number as assigned by the airline.
      def passenger_sequence_number=(value)
        write_property(:passenger_sequence_number, value)
      end

      # The type of security screening the passenger is subject to.
      def security_screening
        read_property(:security_screening)
      end

      # The type of security screening the passenger is subject to.
      def security_screening=(value)
        write_property(:security_screening, value)
      end
    end
  end
end
