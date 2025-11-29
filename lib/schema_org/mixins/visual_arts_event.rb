require "active_support/concern"

module SchemaOrg
  module Mixins
    module VisualArtsEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
