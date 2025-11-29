require "active_support/concern"

module SchemaOrg
  module Mixins
    module Rating
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :author # The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.
        option :best_rating # The highest value allowed in this rating system.
        option :rating_value # The rating for the content.\n\nUsage guidelines:\n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
        option :review_aspect # This Review or Rating is relevant to this part or facet of the itemReviewed.
        option :worst_rating # The lowest value allowed in this rating system.
      end
    end
  end
end
