module SchemaOrg
  # https://schema.org/DataFeedItem
  #
  # A single item within a larger data feed.
  class DataFeedItem < Base
    include Mixins::DataFeedItem
  end
end
