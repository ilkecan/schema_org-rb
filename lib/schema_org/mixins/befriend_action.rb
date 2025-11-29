require "active_support/concern"

module SchemaOrg
  module Mixins
    module BefriendAction
      extend ActiveSupport::Concern

      include InteractAction
    end
  end
end
