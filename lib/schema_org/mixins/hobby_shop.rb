require "active_support/concern"

module SchemaOrg
  module Mixins
    module HobbyShop
      extend ActiveSupport::Concern

      include Store
    end
  end
end
