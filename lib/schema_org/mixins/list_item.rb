require "active_support/concern"

module SchemaOrg
  module Mixins
    module ListItem
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :item # An entity represented by an entry in a list or data feed (e.g. an 'artist' in a list of 'artists').
        option :next_item # A link to the ListItem that follows the current one.
        option :previous_item # A link to the ListItem that precedes the current one.
        option :position # The position of an item in a series or sequence of items.
      end
    end
  end
end
