require "active_support/concern"

module SchemaOrg
  module Mixins
    module ExhibitionEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
