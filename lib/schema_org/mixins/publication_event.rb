require "active_support/concern"

module SchemaOrg
  module Mixins
    module PublicationEvent
      extend ActiveSupport::Concern

      include Event

      included do
        option :free # A flag to signal that the item, event, or place is accessible for free.
        option :published_on # A broadcast service associated with the publication event.
      end
    end
  end
end
