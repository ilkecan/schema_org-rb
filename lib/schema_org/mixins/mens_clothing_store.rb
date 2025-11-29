require "active_support/concern"

module SchemaOrg
  module Mixins
    module MensClothingStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
