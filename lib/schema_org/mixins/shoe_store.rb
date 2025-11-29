require "active_support/concern"

module SchemaOrg
  module Mixins
    module ShoeStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
