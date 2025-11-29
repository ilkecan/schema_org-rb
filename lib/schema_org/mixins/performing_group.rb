require "active_support/concern"

module SchemaOrg
  module Mixins
    module PerformingGroup
      extend ActiveSupport::Concern

      include Organization
    end
  end
end
