require "active_support/concern"

module SchemaOrg
  module Mixins
    module HomeGoodsStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
