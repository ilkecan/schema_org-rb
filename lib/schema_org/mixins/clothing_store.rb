require "active_support/concern"

module SchemaOrg
  module Mixins
    module ClothingStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
