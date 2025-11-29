require "active_support/concern"

module SchemaOrg
  module Mixins
    module HowToItem
      extend ActiveSupport::Concern

      include ListItem

      included do
        option :required_quantity # The required quantity of the item(s).
      end
    end
  end
end
