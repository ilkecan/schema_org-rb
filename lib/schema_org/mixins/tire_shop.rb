require "active_support/concern"

module SchemaOrg
  module Mixins
    module TireShop
      extend ActiveSupport::Concern

      include Store
    end
  end
end
