require "active_support/concern"

module SchemaOrg
  module Mixins
    module HowToTip
      extend ActiveSupport::Concern

      include CreativeWork
      include ListItem
    end
  end
end
