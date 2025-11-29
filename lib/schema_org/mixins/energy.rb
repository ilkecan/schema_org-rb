require "active_support/concern"

module SchemaOrg
  module Mixins
    module Energy
      extend ActiveSupport::Concern

      include Quantity
    end
  end
end
