require "active_support/concern"

module SchemaOrg
  module Mixins
    module DataFeedItem
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :date_created, optional: true # The date on which the CreativeWork was created or the item was added to a DataFeed.
        option :date_deleted, optional: true # The datetime the item was removed from the DataFeed.
        option :date_modified, optional: true # The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed.
        option :item, optional: true # An entity represented by an entry in a list or data feed (e.g. an 'artist' in a list of 'artists').
      end
    end
  end
end
