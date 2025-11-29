require "active_support/concern"

module SchemaOrg
  module Mixins
    module SaleEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
