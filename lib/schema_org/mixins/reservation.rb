require "active_support/concern"

module SchemaOrg
  module Mixins
    module Reservation
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :booking_agent # 'bookingAgent' is an out-dated term indicating a 'broker' that serves as a booking agent. Superseded by `broker`.
        option :booking_time # The date and time the reservation was booked.
        option :modified_time # The date and time the reservation was modified.
        option :price_currency # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
        option :program_membership_used # Any membership in a frequent flyer, hotel loyalty program, etc. being applied to the reservation.
        option :reservation_for # The thing -- flight, event, restaurant, etc. being reserved.
        option :reservation_id # A unique identifier for the reservation.
        option :reservation_status # The current status of the reservation.
        option :reserved_ticket # A ticket associated with the reservation.
        option :total_price # The total price for the reservation or ticket, including applicable taxes, shipping, etc.\n\nUsage guidelines:\n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
        option :under_name # The person or organization the reservation or ticket is for.
        option :broker # An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred. Supersedes `booking_agent`.
        option :provider # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller. Supersedes `carrier`.
      end
    end
  end
end
