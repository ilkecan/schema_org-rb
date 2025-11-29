require "active_support/concern"

module SchemaOrg
  module Mixins
    module HowToStep
      extend ActiveSupport::Concern

      include CreativeWork
      include ItemList
      include ListItem
    end
  end
end
