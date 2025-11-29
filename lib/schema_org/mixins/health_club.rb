require "active_support/concern"

module SchemaOrg
  module Mixins
    module HealthClub
      extend ActiveSupport::Concern

      include HealthAndBeautyBusiness
      include SportsActivityLocation
    end
  end
end
