require "active_support/concern"

module SchemaOrg
  module Mixins
    module JewelryStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
