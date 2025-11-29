require "active_support/concern"

module SchemaOrg
  module Mixins
    module SomeProducts
      extend ActiveSupport::Concern

      include Product

      included do
        option :inventory_level # The current approximate inventory level for the item or items.
      end
    end
  end
end
