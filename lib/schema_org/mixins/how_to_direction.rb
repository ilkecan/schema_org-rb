require "active_support/concern"

module SchemaOrg
  module Mixins
    module HowToDirection
      extend ActiveSupport::Concern

      include CreativeWork
      include ListItem

      included do
        option :after_media, optional: true # A media object representing the circumstances after performing this direction.
        option :before_media, optional: true # A media object representing the circumstances before performing this direction.
        option :during_media, optional: true # A media object representing the circumstances while performing this direction.
        option :prep_time, optional: true # The length of time it takes to prepare the items to be used in instructions or a direction, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :tool, optional: true # A sub property of instrument. An object used (but not consumed) when performing instructions or a direction.
        option :total_time, optional: true # The total time required to perform instructions or a direction (including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :perform_time, optional: true # The length of time it takes to perform instructions or a direction (not including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :supply, optional: true # A sub-property of instrument. A supply consumed when performing instructions or a direction.
      end
    end
  end
end
