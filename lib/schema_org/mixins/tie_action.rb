require "active_support/concern"

module SchemaOrg
  module Mixins
    module TieAction
      extend ActiveSupport::Concern

      include AchieveAction
    end
  end
end
