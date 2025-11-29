require "active_support/concern"

module SchemaOrg
  module Mixins
    module HVACBusiness
      extend ActiveSupport::Concern

      include HomeAndConstructionBusiness
    end
  end
end
