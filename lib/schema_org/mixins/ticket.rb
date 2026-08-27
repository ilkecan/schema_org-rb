# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Ticket
      include Intangible

      def self.schema_property_definitions
        {
          date_issued: {
            schema_name: "dateIssued",
            schema_url: "https://schema.org/dateIssued",
            comment_lines: ["The date the ticket was issued."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          issued_by: {
            schema_name: "issuedBy",
            schema_url: "https://schema.org/issuedBy",
            comment_lines: ["The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]]."].freeze,
            ranges: ["Organization"].freeze,
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
          ticket_number: {
            schema_name: "ticketNumber",
            schema_url: "https://schema.org/ticketNumber",
            comment_lines: ["The unique identifier for the ticket."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ticket_token: {
            schema_name: "ticketToken",
            schema_url: "https://schema.org/ticketToken",
            comment_lines: ["Reference to an asset (e.g., Barcode, QR code image or PDF) usable for entrance."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ticketed_seat: {
            schema_name: "ticketedSeat",
            schema_url: "https://schema.org/ticketedSeat",
            comment_lines: ["The seat associated with the ticket."].freeze,
            ranges: ["Seat"].freeze,
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

      # The date the ticket was issued.
      def date_issued
        read_property(:date_issued)
      end

      # The date the ticket was issued.
      def date_issued=(value)
        write_property(:date_issued, value)
      end

      # The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]].
      def issued_by
        read_property(:issued_by)
      end

      # The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]].
      def issued_by=(value)
        write_property(:issued_by, value)
      end

      # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def price_currency
        read_property(:price_currency)
      end

      # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def price_currency=(value)
        write_property(:price_currency, value)
      end

      # The unique identifier for the ticket.
      def ticket_number
        read_property(:ticket_number)
      end

      # The unique identifier for the ticket.
      def ticket_number=(value)
        write_property(:ticket_number, value)
      end

      # Reference to an asset (e.g., Barcode, QR code image or PDF) usable for entrance.
      def ticket_token
        read_property(:ticket_token)
      end

      # Reference to an asset (e.g., Barcode, QR code image or PDF) usable for entrance.
      def ticket_token=(value)
        write_property(:ticket_token, value)
      end

      # The seat associated with the ticket.
      def ticketed_seat
        read_property(:ticketed_seat)
      end

      # The seat associated with the ticket.
      def ticketed_seat=(value)
        write_property(:ticketed_seat, value)
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
