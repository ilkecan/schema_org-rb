require "active_support/concern"

module SchemaOrg
  module Mixins
    module DriveWheelConfigurationValue
      extend ActiveSupport::Concern

      include QualitativeValue
    end
  end
end
