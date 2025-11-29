module SchemaOrg
  # https://schema.org/DataFeed
  #
  # A single feed providing structured information about one or more entities or topics.
  class DataFeed < Base
    include Mixins::DataFeed
  end
end
