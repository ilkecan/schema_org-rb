require "active_support/concern"

module SchemaOrg
  module Mixins
    module TheaterEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
