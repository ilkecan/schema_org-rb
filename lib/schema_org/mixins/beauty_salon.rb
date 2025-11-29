require "active_support/concern"

module SchemaOrg
  module Mixins
    module BeautySalon
      extend ActiveSupport::Concern

      include HealthAndBeautyBusiness
    end
  end
end
