require "active_support/concern"

module SchemaOrg
  module Mixins
    module PublicationEvent
      extend ActiveSupport::Concern

      include Event

      included do
        option :free, optional: true # A flag to signal that the item, event, or place is accessible for free. Superseded by `is_accessible_for_free`.
        option :published_on, optional: true # A broadcast service associated with the publication event.
      end
    end
  end
end
