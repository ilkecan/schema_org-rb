require "active_support/concern"

module SchemaOrg
  module Mixins
    module QuantitativeValueDistribution
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :median # The median value.
        option :percentile10 # The 10th percentile value.
        option :percentile25 # The 25th percentile value.
        option :percentile75 # The 75th percentile value.
        option :percentile90 # The 90th percentile value.
        option :duration # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      end
    end
  end
end
