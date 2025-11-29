require "active_support/concern"

module SchemaOrg
  module Mixins
    module HousePainter
      extend ActiveSupport::Concern

      include HomeAndConstructionBusiness
    end
  end
end
