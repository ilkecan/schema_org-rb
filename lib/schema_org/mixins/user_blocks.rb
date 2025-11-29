require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserBlocks
      extend ActiveSupport::Concern

      include UserInteraction
    end
  end
end
