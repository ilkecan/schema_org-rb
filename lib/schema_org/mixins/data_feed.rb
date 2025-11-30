require "active_support/concern"

module SchemaOrg
  module Mixins
    module DataFeed
      extend ActiveSupport::Concern

      include Dataset

      included do
        option :data_feed_element, optional: true # An item within a data feed. Data feeds may have many elements.
      end
    end
  end
end
