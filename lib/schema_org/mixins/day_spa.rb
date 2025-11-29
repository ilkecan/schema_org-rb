require "active_support/concern"

module SchemaOrg
  module Mixins
    module DaySpa
      extend ActiveSupport::Concern

      include HealthAndBeautyBusiness
    end
  end
end
