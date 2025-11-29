require "active_support/concern"

module SchemaOrg
  module Mixins
    module DepartAction
      extend ActiveSupport::Concern

      include MoveAction
    end
  end
end
