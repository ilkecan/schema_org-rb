require "active_support/concern"

module SchemaOrg
  module Mixins
    module RoofingContractor
      extend ActiveSupport::Concern

      include HomeAndConstructionBusiness
    end
  end
end
