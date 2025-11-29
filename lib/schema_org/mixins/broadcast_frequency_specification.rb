require "active_support/concern"

module SchemaOrg
  module Mixins
    module BroadcastFrequencySpecification
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :broadcast_frequency_value # The frequency in MHz for a particular broadcast.
      end
    end
  end
end
