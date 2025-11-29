require "active_support/concern"

module SchemaOrg
  module Mixins
    module MovingCompany
      extend ActiveSupport::Concern

      include HomeAndConstructionBusiness
    end
  end
end
