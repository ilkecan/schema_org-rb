require "active_support/concern"

module SchemaOrg
  module Mixins
    module Order
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :accepted_offer, optional: true # The offer(s) -- e.g., product, quantity and price combinations -- included in the order.
        option :billing_address, optional: true # The billing address for the order.
        option :confirmation_number, optional: true # A number that confirms the given order or payment has been received.
        option :customer, optional: true # Party placing the order or paying the invoice.
        option :discount, optional: true # Any discount applied (to an Order).
        option :discount_code, optional: true # Code used to redeem a discount.
        option :discount_currency, optional: true # The currency of the discount.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
        option :is_gift, optional: true # Indicates whether the offer was accepted as a gift for someone other than the buyer.
        option :merchant, optional: true # 'merchant' is an out-dated term for 'seller'. Superseded by `seller`.
        option :order_date, optional: true # Date order was placed.
        option :order_delivery, optional: true # The delivery of the parcel related to this order or order item.
        option :order_number, optional: true # The identifier of the transaction.
        option :order_status, optional: true # The current status of the order.
        option :ordered_item, optional: true # The item ordered.
        option :part_of_invoice, optional: true # The order is being paid as part of the referenced Invoice.
        option :payment_due, optional: true # The date that payment is due. Superseded by `payment_due_date`.
        option :payment_method, optional: true # The name of the credit card or other method of payment for the order.
        option :payment_method_id, optional: true # An identifier for the method of payment used (e.g. the last 4 digits of the credit card).
        option :payment_url, optional: true # The URL for sending a payment.
        option :broker, optional: true # An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred. Supersedes `booking_agent`.
        option :payment_due_date, optional: true # The date that payment is due. Supersedes `payment_due`.
        option :seller, optional: true # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider. Supersedes `vendor`.
      end
    end
  end
end
