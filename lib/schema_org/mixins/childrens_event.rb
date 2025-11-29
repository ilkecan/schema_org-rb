require "active_support/concern"

module SchemaOrg
  module Mixins
    module ChildrensEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
