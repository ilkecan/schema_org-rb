require "active_support/concern"

module SchemaOrg
  module Mixins
    module Review
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :item_reviewed # The item that is being reviewed/rated.
        option :review_aspect # This Review or Rating is relevant to this part or facet of the itemReviewed.
        option :review_body # The actual body of the review.
        option :review_rating # The rating given in this review. Note that reviews can themselves be rated. The ```reviewRating``` applies to rating given by the review. The [[aggregateRating]] property applies to the review itself, as a creative work.
      end
    end
  end
end
