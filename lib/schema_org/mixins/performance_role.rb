require "active_support/concern"

module SchemaOrg
  module Mixins
    module PerformanceRole
      extend ActiveSupport::Concern

      include Role

      included do
        option :character_name, optional: true # The name of a character played in some acting or performing role, i.e. in a PerformanceRole.
      end
    end
  end
end
