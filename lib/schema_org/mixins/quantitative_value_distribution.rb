require "active_support/concern"

module SchemaOrg
  module Mixins
    module QuantitativeValueDistribution
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :median, optional: true # The median value.
        option :percentile10, optional: true # The 10th percentile value.
        option :percentile25, optional: true # The 25th percentile value.
        option :percentile75, optional: true # The 75th percentile value.
        option :percentile90, optional: true # The 90th percentile value.
        option :duration, optional: true # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      end
    end
  end
end
