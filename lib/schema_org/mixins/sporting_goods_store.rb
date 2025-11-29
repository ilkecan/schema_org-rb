require "active_support/concern"

module SchemaOrg
  module Mixins
    module SportingGoodsStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
