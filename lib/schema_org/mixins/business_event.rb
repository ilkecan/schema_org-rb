require "active_support/concern"

module SchemaOrg
  module Mixins
    module BusinessEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
