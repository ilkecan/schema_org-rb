require "active_support/concern"

module SchemaOrg
  module Mixins
    module Brand
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :aggregate_rating, optional: true # The overall rating, based on a collection of reviews or ratings, of the item.
        option :logo, optional: true # An associated logo.
        option :slogan, optional: true # A slogan or motto associated with the item.
        option :review, optional: true # A review of the item. Supersedes `reviews`.
      end
    end
  end
end
