require "active_support/concern"

module SchemaOrg
  module Mixins
    module AutoPartsStore
      extend ActiveSupport::Concern

      include AutomotiveBusiness
      include Store
    end
  end
end
