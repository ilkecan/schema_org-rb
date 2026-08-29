# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Reservation
      include Intangible

      def self.schema_property_definitions
        {
          booking_agent: {
            schema_name: "bookingAgent",
            schema_url: "https://schema.org/bookingAgent",
            comment_lines: ["'bookingAgent' is an out-dated term indicating a 'broker' that serves as a booking agent."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "broker",
            supersedes: nil
          }.freeze,
          booking_time: {
            schema_name: "bookingTime",
            schema_url: "https://schema.org/bookingTime",
            comment_lines: ["The date and time the reservation was booked."].freeze,
            ranges: ["DateTime"].freeze,
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
          modified_time: {
            schema_name: "modifiedTime",
            schema_url: "https://schema.org/modifiedTime",
            comment_lines: ["The date and time the reservation was modified."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price_currency: {
            schema_name: "priceCurrency",
            schema_url: "https://schema.org/priceCurrency",
            comment_lines: ["The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          program_membership_used: {
            schema_name: "programMembershipUsed",
            schema_url: "https://schema.org/programMembershipUsed",
            comment_lines: ["Any membership in a frequent flyer, hotel loyalty program, etc. being applied to the reservation."].freeze,
            ranges: ["ProgramMembership"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
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
          reservation_for: {
            schema_name: "reservationFor",
            schema_url: "https://schema.org/reservationFor",
            comment_lines: ["The thing -- flight, event, restaurant, etc. being reserved."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          reservation_id: {
            schema_name: "reservationId",
            schema_url: "https://schema.org/reservationId",
            comment_lines: ["A unique identifier for the reservation."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          reservation_status: {
            schema_name: "reservationStatus",
            schema_url: "https://schema.org/reservationStatus",
            comment_lines: ["The current status of the reservation."].freeze,
            ranges: ["ReservationStatusType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          reserved_ticket: {
            schema_name: "reservedTicket",
            schema_url: "https://schema.org/reservedTicket",
            comment_lines: ["A ticket associated with the reservation."].freeze,
            ranges: ["Ticket"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          total_price: {
            schema_name: "totalPrice",
            schema_url: "https://schema.org/totalPrice",
            comment_lines: ["The total price for the reservation or ticket, including applicable taxes, shipping, etc.\\n\\nUsage guidelines:\\n\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."].freeze,
            ranges: ["Number", "PriceSpecification", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          under_name: {
            schema_name: "underName",
            schema_url: "https://schema.org/underName",
            comment_lines: ["The person or organization the reservation or ticket is for."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # 'bookingAgent' is an out-dated term indicating a 'broker' that serves as a booking agent.
      # Superseded by `broker`.
      def booking_agent
        read_property(:booking_agent)
      end

      # 'bookingAgent' is an out-dated term indicating a 'broker' that serves as a booking agent.
      # Superseded by `broker`.
      def booking_agent=(value)
        write_property(:booking_agent, value)
      end

      # The date and time the reservation was booked.
      def booking_time
        read_property(:booking_time)
      end

      # The date and time the reservation was booked.
      def booking_time=(value)
        write_property(:booking_time, value)
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

      # The date and time the reservation was modified.
      def modified_time
        read_property(:modified_time)
      end

      # The date and time the reservation was modified.
      def modified_time=(value)
        write_property(:modified_time, value)
      end

      # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def price_currency
        read_property(:price_currency)
      end

      # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def price_currency=(value)
        write_property(:price_currency, value)
      end

      # Any membership in a frequent flyer, hotel loyalty program, etc. being applied to the reservation.
      def program_membership_used
        read_property(:program_membership_used)
      end

      # Any membership in a frequent flyer, hotel loyalty program, etc. being applied to the reservation.
      def program_membership_used=(value)
        write_property(:program_membership_used, value)
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

      # The thing -- flight, event, restaurant, etc. being reserved.
      def reservation_for
        read_property(:reservation_for)
      end

      # The thing -- flight, event, restaurant, etc. being reserved.
      def reservation_for=(value)
        write_property(:reservation_for, value)
      end

      # A unique identifier for the reservation.
      def reservation_id
        read_property(:reservation_id)
      end

      # A unique identifier for the reservation.
      def reservation_id=(value)
        write_property(:reservation_id, value)
      end

      # The current status of the reservation.
      def reservation_status
        read_property(:reservation_status)
      end

      # The current status of the reservation.
      def reservation_status=(value)
        write_property(:reservation_status, value)
      end

      # A ticket associated with the reservation.
      def reserved_ticket
        read_property(:reserved_ticket)
      end

      # A ticket associated with the reservation.
      def reserved_ticket=(value)
        write_property(:reserved_ticket, value)
      end

      # The total price for the reservation or ticket, including applicable taxes, shipping, etc.\n\nUsage guidelines:\n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
      def total_price
        read_property(:total_price)
      end

      # The total price for the reservation or ticket, including applicable taxes, shipping, etc.\n\nUsage guidelines:\n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
      def total_price=(value)
        write_property(:total_price, value)
      end

      # The person or organization the reservation or ticket is for.
      def under_name
        read_property(:under_name)
      end

      # The person or organization the reservation or ticket is for.
      def under_name=(value)
        write_property(:under_name, value)
      end
    end
  end
end
