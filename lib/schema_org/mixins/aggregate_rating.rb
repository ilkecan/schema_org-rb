require "active_support/concern"

module SchemaOrg
  module Mixins
    module AggregateRating
      extend ActiveSupport::Concern

      include Rating

      included do
        option :item_reviewed # The item that is being reviewed/rated.
        option :rating_count # The count of total number of ratings.
        option :review_count # The count of total number of reviews.
      end
    end
  end
end
