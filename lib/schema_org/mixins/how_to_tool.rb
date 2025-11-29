require "active_support/concern"

module SchemaOrg
  module Mixins
    module HowToTool
      extend ActiveSupport::Concern

      include HowToItem
    end
  end
end
