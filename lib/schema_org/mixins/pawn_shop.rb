require "active_support/concern"

module SchemaOrg
  module Mixins
    module PawnShop
      extend ActiveSupport::Concern

      include Store
    end
  end
end
