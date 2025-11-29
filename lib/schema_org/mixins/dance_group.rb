require "active_support/concern"

module SchemaOrg
  module Mixins
    module DanceGroup
      extend ActiveSupport::Concern

      include PerformingGroup
    end
  end
end
