require "active_support/concern"

module SchemaOrg
  module Mixins
    module Invoice
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :account_id, optional: true # The identifier for the account the payment will be applied to.
        option :billing_period, optional: true # The time interval used to compute the invoice.
        option :category, optional: true # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
        option :confirmation_number, optional: true # A number that confirms the given order or payment has been received.
        option :customer, optional: true # Party placing the order or paying the invoice.
        option :minimum_payment_due, optional: true # The minimum payment required at this time.
        option :payment_due, optional: true # The date that payment is due. Superseded by `payment_due_date`.
        option :payment_method, optional: true # The name of the credit card or other method of payment for the order.
        option :payment_method_id, optional: true # An identifier for the method of payment used (e.g. the last 4 digits of the credit card).
        option :payment_status, optional: true # The status of payment; whether the invoice has been paid or not.
        option :references_order, optional: true # The Order(s) related to this Invoice. One or more Orders may be combined into a single Invoice.
        option :scheduled_payment_date, optional: true # The date the invoice is scheduled to be paid.
        option :total_payment_due, optional: true # The total amount due.
        option :broker, optional: true # An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred. Supersedes `booking_agent`.
        option :payment_due_date, optional: true # The date that payment is due. Supersedes `payment_due`.
        option :provider, optional: true # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller. Supersedes `carrier`.
      end
    end
  end
end
