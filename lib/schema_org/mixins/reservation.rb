module SchemaOrg
  module Mixins
    module Reservation
      include Intangible

      def self.schema_property_definitions
        {
          :booking_agent => {
            schema_name: "bookingAgent",
            ranges: ["Organization", "Person"],
          }.freeze,
          :booking_time => {
            schema_name: "bookingTime",
            ranges: ["DateTime"],
          }.freeze,
          :broker => {
            schema_name: "broker",
            ranges: ["Organization", "Person"],
          }.freeze,
          :modified_time => {
            schema_name: "modifiedTime",
            ranges: ["DateTime"],
          }.freeze,
          :price_currency => {
            schema_name: "priceCurrency",
            ranges: ["Text"],
          }.freeze,
          :program_membership_used => {
            schema_name: "programMembershipUsed",
            ranges: ["ProgramMembership"],
          }.freeze,
          :provider => {
            schema_name: "provider",
            ranges: ["Organization", "Person"],
          }.freeze,
          :reservation_for => {
            schema_name: "reservationFor",
            ranges: ["Thing"],
          }.freeze,
          :reservation_id => {
            schema_name: "reservationId",
            ranges: ["Text"],
          }.freeze,
          :reservation_status => {
            schema_name: "reservationStatus",
            ranges: ["ReservationStatusType"],
          }.freeze,
          :reserved_ticket => {
            schema_name: "reservedTicket",
            ranges: ["Ticket"],
          }.freeze,
          :total_price => {
            schema_name: "totalPrice",
            ranges: ["Number", "PriceSpecification", "Text"],
          }.freeze,
          :under_name => {
            schema_name: "underName",
            ranges: ["Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def booking_agent
        read_property(:booking_agent)
      end

      def booking_agent=(value)
        write_property(:booking_agent, value)
      end

      def booking_time
        read_property(:booking_time)
      end

      def booking_time=(value)
        write_property(:booking_time, value)
      end

      def broker
        read_property(:broker)
      end

      def broker=(value)
        write_property(:broker, value)
      end

      def modified_time
        read_property(:modified_time)
      end

      def modified_time=(value)
        write_property(:modified_time, value)
      end

      def price_currency
        read_property(:price_currency)
      end

      def price_currency=(value)
        write_property(:price_currency, value)
      end

      def program_membership_used
        read_property(:program_membership_used)
      end

      def program_membership_used=(value)
        write_property(:program_membership_used, value)
      end

      def provider
        read_property(:provider)
      end

      def provider=(value)
        write_property(:provider, value)
      end

      def reservation_for
        read_property(:reservation_for)
      end

      def reservation_for=(value)
        write_property(:reservation_for, value)
      end

      def reservation_id
        read_property(:reservation_id)
      end

      def reservation_id=(value)
        write_property(:reservation_id, value)
      end

      def reservation_status
        read_property(:reservation_status)
      end

      def reservation_status=(value)
        write_property(:reservation_status, value)
      end

      def reserved_ticket
        read_property(:reserved_ticket)
      end

      def reserved_ticket=(value)
        write_property(:reserved_ticket, value)
      end

      def total_price
        read_property(:total_price)
      end

      def total_price=(value)
        write_property(:total_price, value)
      end

      def under_name
        read_property(:under_name)
      end

      def under_name=(value)
        write_property(:under_name, value)
      end

    end
  end
end
