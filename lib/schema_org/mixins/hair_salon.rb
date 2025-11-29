require "active_support/concern"

module SchemaOrg
  module Mixins
    module HairSalon
      extend ActiveSupport::Concern

      include HealthAndBeautyBusiness
    end
  end
end
