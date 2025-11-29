require "active_support/concern"

module SchemaOrg
  module Mixins
    module NailSalon
      extend ActiveSupport::Concern

      include HealthAndBeautyBusiness
    end
  end
end
