require "active_support/concern"

module SchemaOrg
  module Mixins
    module LendAction
      extend ActiveSupport::Concern

      include TransferAction

      included do
        option :borrower # A sub property of participant. The person that borrows the object being lent.
      end
    end
  end
end
