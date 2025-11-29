require "active_support/concern"

module SchemaOrg
  module Mixins
    module BikeStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
