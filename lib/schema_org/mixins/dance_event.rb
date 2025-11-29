require "active_support/concern"

module SchemaOrg
  module Mixins
    module DanceEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
