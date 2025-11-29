require "active_support/concern"

module SchemaOrg
  module Mixins
    module BorrowAction
      extend ActiveSupport::Concern

      include TransferAction

      included do
        option :lender # A sub property of participant. The person that lends the object being borrowed.
      end
    end
  end
end
