require "active_support/concern"

module SchemaOrg
  module Mixins
    module ArriveAction
      extend ActiveSupport::Concern

      include MoveAction
    end
  end
end
