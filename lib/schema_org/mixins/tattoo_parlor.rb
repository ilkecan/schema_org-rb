require "active_support/concern"

module SchemaOrg
  module Mixins
    module TattooParlor
      extend ActiveSupport::Concern

      include HealthAndBeautyBusiness
    end
  end
end
