module SchemaOrg
  # https://schema.org/DriveWheelConfigurationValue
  #
  # A value indicating which roadwheels will receive torque.
  class DriveWheelConfigurationValue < Base
    include Mixins::DriveWheelConfigurationValue
    SCHEMA_TYPES = [self, SchemaOrg::QualitativeValue, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
    ALL_WHEEL_DRIVE_CONFIGURATION = EnumerationValue.new("AllWheelDriveConfiguration", self, [SchemaOrg::DriveWheelConfigurationValue]).freeze
    FOUR_WHEEL_DRIVE_CONFIGURATION = EnumerationValue.new("FourWheelDriveConfiguration", self, [SchemaOrg::DriveWheelConfigurationValue]).freeze
    FRONT_WHEEL_DRIVE_CONFIGURATION = EnumerationValue.new("FrontWheelDriveConfiguration", self, [SchemaOrg::DriveWheelConfigurationValue]).freeze
    REAR_WHEEL_DRIVE_CONFIGURATION = EnumerationValue.new("RearWheelDriveConfiguration", self, [SchemaOrg::DriveWheelConfigurationValue]).freeze
    VALUES = [ALL_WHEEL_DRIVE_CONFIGURATION, FOUR_WHEEL_DRIVE_CONFIGURATION, FRONT_WHEEL_DRIVE_CONFIGURATION, REAR_WHEEL_DRIVE_CONFIGURATION].freeze

    def self.values
      VALUES
    end
  end
end
