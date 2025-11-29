require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserPlays
      extend ActiveSupport::Concern

      include UserInteraction
    end
  end
end
