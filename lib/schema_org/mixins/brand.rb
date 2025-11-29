require "active_support/concern"

module SchemaOrg
  module Mixins
    module Brand
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :aggregate_rating # The overall rating, based on a collection of reviews or ratings, of the item.
        option :logo # An associated logo.
        option :slogan # A slogan or motto associated with the item.
        option :review # A review of the item.
      end
    end
  end
end
