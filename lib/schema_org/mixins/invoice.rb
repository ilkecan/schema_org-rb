require "active_support/concern"

module SchemaOrg
  module Mixins
    module Invoice
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :account_id # The identifier for the account the payment will be applied to.
        option :billing_period # The time interval used to compute the invoice.
        option :category # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
        option :confirmation_number # A number that confirms the given order or payment has been received.
        option :customer # Party placing the order or paying the invoice.
        option :minimum_payment_due # The minimum payment required at this time.
        option :payment_due # The date that payment is due.
        option :payment_method # The name of the credit card or other method of payment for the order.
        option :payment_method_id # An identifier for the method of payment used (e.g. the last 4 digits of the credit card).
        option :payment_status # The status of payment; whether the invoice has been paid or not.
        option :references_order # The Order(s) related to this Invoice. One or more Orders may be combined into a single Invoice.
        option :scheduled_payment_date # The date the invoice is scheduled to be paid.
        option :total_payment_due # The total amount due.
        option :broker # An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred.
        option :payment_due_date # The date that payment is due.
        option :provider # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      end
    end
  end
end
