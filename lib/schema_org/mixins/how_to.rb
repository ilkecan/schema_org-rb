require "active_support/concern"

module SchemaOrg
  module Mixins
    module HowTo
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :estimated_cost # The estimated cost of the supply or supplies consumed when performing instructions.
        option :prep_time # The length of time it takes to prepare the items to be used in instructions or a direction, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :steps # A single step item (as HowToStep, text, document, video, etc.) or a HowToSection (originally misnamed 'steps'; 'step' is preferred).
        option :tool # A sub property of instrument. An object used (but not consumed) when performing instructions or a direction.
        option :total_time # The total time required to perform instructions or a direction (including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :perform_time # The length of time it takes to perform instructions or a direction (not including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :yield # The quantity that results by performing instructions. For example, a paper airplane, 10 personalized candles.
        option :step # A single step item (as HowToStep, text, document, video, etc.) or a HowToSection.
        option :supply # A sub-property of instrument. A supply consumed when performing instructions or a direction.
      end
    end
  end
end
