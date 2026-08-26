module SchemaOrg
  module Mixins
    module Ticket
      include Intangible

      def self.schema_property_definitions
        {
          :date_issued => {
            schema_name: "dateIssued",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :issued_by => {
            schema_name: "issuedBy",
            ranges: ["Organization"],
          }.freeze,
          :price_currency => {
            schema_name: "priceCurrency",
            ranges: ["Text"],
          }.freeze,
          :ticket_number => {
            schema_name: "ticketNumber",
            ranges: ["Text"],
          }.freeze,
          :ticket_token => {
            schema_name: "ticketToken",
            ranges: ["Text", "URL"],
          }.freeze,
          :ticketed_seat => {
            schema_name: "ticketedSeat",
            ranges: ["Seat"],
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

      def date_issued
        read_property(:date_issued)
      end

      def date_issued=(value)
        write_property(:date_issued, value)
      end

      def issued_by
        read_property(:issued_by)
      end

      def issued_by=(value)
        write_property(:issued_by, value)
      end

      def price_currency
        read_property(:price_currency)
      end

      def price_currency=(value)
        write_property(:price_currency, value)
      end

      def ticket_number
        read_property(:ticket_number)
      end

      def ticket_number=(value)
        write_property(:ticket_number, value)
      end

      def ticket_token
        read_property(:ticket_token)
      end

      def ticket_token=(value)
        write_property(:ticket_token, value)
      end

      def ticketed_seat
        read_property(:ticketed_seat)
      end

      def ticketed_seat=(value)
        write_property(:ticketed_seat, value)
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
