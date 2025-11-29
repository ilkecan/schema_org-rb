require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserCheckins
      extend ActiveSupport::Concern

      include UserInteraction
    end
  end
end
