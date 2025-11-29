require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserPageVisits
      extend ActiveSupport::Concern

      include UserInteraction
    end
  end
end
