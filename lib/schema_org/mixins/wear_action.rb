require "active_support/concern"

module SchemaOrg
  module Mixins
    module WearAction
      extend ActiveSupport::Concern

      include UseAction
    end
  end
end
