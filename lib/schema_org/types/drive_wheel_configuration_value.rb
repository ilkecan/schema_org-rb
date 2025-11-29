module SchemaOrg
  # https://schema.org/DriveWheelConfigurationValue
  #
  # A value indicating which roadwheels will receive torque.
  class DriveWheelConfigurationValue < Base
    include Mixins::DriveWheelConfigurationValue
  end
end
