require "active_support/concern"

module SchemaOrg
  module Mixins
    module TakeAction
      extend ActiveSupport::Concern

      include TransferAction
    end
  end
end
