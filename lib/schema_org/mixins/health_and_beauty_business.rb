require "active_support/concern"

module SchemaOrg
  module Mixins
    module HealthAndBeautyBusiness
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
