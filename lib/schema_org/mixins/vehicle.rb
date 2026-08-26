module SchemaOrg
  module Mixins
    module Vehicle
      include Product

      def self.schema_property_definitions
        {
          :cargo_volume => {
            schema_name: "cargoVolume",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :date_vehicle_first_registered => {
            schema_name: "dateVehicleFirstRegistered",
            ranges: ["Date"],
          }.freeze,
          :drive_wheel_configuration => {
            schema_name: "driveWheelConfiguration",
            ranges: ["DriveWheelConfigurationValue", "Text"],
          }.freeze,
          :fuel_consumption => {
            schema_name: "fuelConsumption",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :fuel_efficiency => {
            schema_name: "fuelEfficiency",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :fuel_type => {
            schema_name: "fuelType",
            ranges: ["QualitativeValue", "Text", "URL"],
          }.freeze,
          :known_vehicle_damages => {
            schema_name: "knownVehicleDamages",
            ranges: ["Text"],
          }.freeze,
          :mileage_from_odometer => {
            schema_name: "mileageFromOdometer",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :number_of_airbags => {
            schema_name: "numberOfAirbags",
            ranges: ["Number", "Text"],
          }.freeze,
          :number_of_axles => {
            schema_name: "numberOfAxles",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :number_of_doors => {
            schema_name: "numberOfDoors",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :number_of_forward_gears => {
            schema_name: "numberOfForwardGears",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :number_of_previous_owners => {
            schema_name: "numberOfPreviousOwners",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :production_date => {
            schema_name: "productionDate",
            ranges: ["Date"],
          }.freeze,
          :purchase_date => {
            schema_name: "purchaseDate",
            ranges: ["Date"],
          }.freeze,
          :steering_position => {
            schema_name: "steeringPosition",
            ranges: ["SteeringPositionValue"],
          }.freeze,
          :vehicle_configuration => {
            schema_name: "vehicleConfiguration",
            ranges: ["Text"],
          }.freeze,
          :vehicle_engine => {
            schema_name: "vehicleEngine",
            ranges: ["EngineSpecification"],
          }.freeze,
          :vehicle_identification_number => {
            schema_name: "vehicleIdentificationNumber",
            ranges: ["Text"],
          }.freeze,
          :vehicle_interior_color => {
            schema_name: "vehicleInteriorColor",
            ranges: ["Text"],
          }.freeze,
          :vehicle_interior_type => {
            schema_name: "vehicleInteriorType",
            ranges: ["Text"],
          }.freeze,
          :vehicle_model_date => {
            schema_name: "vehicleModelDate",
            ranges: ["Date"],
          }.freeze,
          :vehicle_seating_capacity => {
            schema_name: "vehicleSeatingCapacity",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :vehicle_special_usage => {
            schema_name: "vehicleSpecialUsage",
            ranges: ["Text"],
          }.freeze,
          :vehicle_transmission => {
            schema_name: "vehicleTransmission",
            ranges: ["QualitativeValue", "Text", "URL"],
          }.freeze,
        }.freeze
      end

      def cargo_volume
        read_property(:cargo_volume)
      end

      def cargo_volume=(value)
        write_property(:cargo_volume, value)
      end

      def date_vehicle_first_registered
        read_property(:date_vehicle_first_registered)
      end

      def date_vehicle_first_registered=(value)
        write_property(:date_vehicle_first_registered, value)
      end

      def drive_wheel_configuration
        read_property(:drive_wheel_configuration)
      end

      def drive_wheel_configuration=(value)
        write_property(:drive_wheel_configuration, value)
      end

      def fuel_consumption
        read_property(:fuel_consumption)
      end

      def fuel_consumption=(value)
        write_property(:fuel_consumption, value)
      end

      def fuel_efficiency
        read_property(:fuel_efficiency)
      end

      def fuel_efficiency=(value)
        write_property(:fuel_efficiency, value)
      end

      def fuel_type
        read_property(:fuel_type)
      end

      def fuel_type=(value)
        write_property(:fuel_type, value)
      end

      def known_vehicle_damages
        read_property(:known_vehicle_damages)
      end

      def known_vehicle_damages=(value)
        write_property(:known_vehicle_damages, value)
      end

      def mileage_from_odometer
        read_property(:mileage_from_odometer)
      end

      def mileage_from_odometer=(value)
        write_property(:mileage_from_odometer, value)
      end

      def number_of_airbags
        read_property(:number_of_airbags)
      end

      def number_of_airbags=(value)
        write_property(:number_of_airbags, value)
      end

      def number_of_axles
        read_property(:number_of_axles)
      end

      def number_of_axles=(value)
        write_property(:number_of_axles, value)
      end

      def number_of_doors
        read_property(:number_of_doors)
      end

      def number_of_doors=(value)
        write_property(:number_of_doors, value)
      end

      def number_of_forward_gears
        read_property(:number_of_forward_gears)
      end

      def number_of_forward_gears=(value)
        write_property(:number_of_forward_gears, value)
      end

      def number_of_previous_owners
        read_property(:number_of_previous_owners)
      end

      def number_of_previous_owners=(value)
        write_property(:number_of_previous_owners, value)
      end

      def production_date
        read_property(:production_date)
      end

      def production_date=(value)
        write_property(:production_date, value)
      end

      def purchase_date
        read_property(:purchase_date)
      end

      def purchase_date=(value)
        write_property(:purchase_date, value)
      end

      def steering_position
        read_property(:steering_position)
      end

      def steering_position=(value)
        write_property(:steering_position, value)
      end

      def vehicle_configuration
        read_property(:vehicle_configuration)
      end

      def vehicle_configuration=(value)
        write_property(:vehicle_configuration, value)
      end

      def vehicle_engine
        read_property(:vehicle_engine)
      end

      def vehicle_engine=(value)
        write_property(:vehicle_engine, value)
      end

      def vehicle_identification_number
        read_property(:vehicle_identification_number)
      end

      def vehicle_identification_number=(value)
        write_property(:vehicle_identification_number, value)
      end

      def vehicle_interior_color
        read_property(:vehicle_interior_color)
      end

      def vehicle_interior_color=(value)
        write_property(:vehicle_interior_color, value)
      end

      def vehicle_interior_type
        read_property(:vehicle_interior_type)
      end

      def vehicle_interior_type=(value)
        write_property(:vehicle_interior_type, value)
      end

      def vehicle_model_date
        read_property(:vehicle_model_date)
      end

      def vehicle_model_date=(value)
        write_property(:vehicle_model_date, value)
      end

      def vehicle_seating_capacity
        read_property(:vehicle_seating_capacity)
      end

      def vehicle_seating_capacity=(value)
        write_property(:vehicle_seating_capacity, value)
      end

      def vehicle_special_usage
        read_property(:vehicle_special_usage)
      end

      def vehicle_special_usage=(value)
        write_property(:vehicle_special_usage, value)
      end

      def vehicle_transmission
        read_property(:vehicle_transmission)
      end

      def vehicle_transmission=(value)
        write_property(:vehicle_transmission, value)
      end

    end
  end
end
