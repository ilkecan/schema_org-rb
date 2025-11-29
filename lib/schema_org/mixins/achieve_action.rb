require "active_support/concern"

module SchemaOrg
  module Mixins
    module AchieveAction
      extend ActiveSupport::Concern

      include Action
    end
  end
end
