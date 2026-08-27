# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Vehicle
      include Product

      def self.schema_property_definitions
        {
          acceleration_time: {
            schema_name: "accelerationTime",
            schema_url: "https://schema.org/accelerationTime",
            comment_lines: ["The time needed to accelerate the vehicle from a given start velocity to a given target velocity.\\n\\nTypical unit code(s): SEC for seconds\\n\\n* Note: There are unfortunately no standard unit codes for seconds/0..100 km/h or seconds/0..60 mph. Simply use \"SEC\" for seconds and indicate the velocities in the [[name]] of the [[QuantitativeValue]], or use [[valueReference]] with a [[QuantitativeValue]] of 0..60 mph or 0..100 km/h to specify the reference speeds."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          body_type: {
            schema_name: "bodyType",
            schema_url: "https://schema.org/bodyType",
            comment_lines: ["Indicates the design and body style of the vehicle (e.g. station wagon, hatchback, etc.)."].freeze,
            ranges: ["QualitativeValue", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          call_sign: {
            schema_name: "callSign",
            schema_url: "https://schema.org/callSign",
            comment_lines: ["A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cargo_volume: {
            schema_name: "cargoVolume",
            schema_url: "https://schema.org/cargoVolume",
            comment_lines: ["The available volume for cargo or luggage. For automobiles, this is usually the trunk volume.\\n\\nTypical unit code(s): LTR for liters, FTQ for cubic foot/feet\\n\\nNote: You can use [[minValue]] and [[maxValue]] to indicate ranges."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_vehicle_first_registered: {
            schema_name: "dateVehicleFirstRegistered",
            schema_url: "https://schema.org/dateVehicleFirstRegistered",
            comment_lines: ["The date of the first registration of the vehicle with the respective public authorities."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          drive_wheel_configuration: {
            schema_name: "driveWheelConfiguration",
            schema_url: "https://schema.org/driveWheelConfiguration",
            comment_lines: ["The drive wheel configuration, i.e. which roadwheels will receive torque from the vehicle's engine via the drivetrain."].freeze,
            ranges: ["DriveWheelConfigurationValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          emissions_co2: {
            schema_name: "emissionsCO2",
            schema_url: "https://schema.org/emissionsCO2",
            comment_lines: ["The CO2 emissions in g/km. When used in combination with a QuantitativeValue, put \"g/km\" into the unitText property of that value, since there is no UN/CEFACT Common Code for \"g/km\"."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          fuel_capacity: {
            schema_name: "fuelCapacity",
            schema_url: "https://schema.org/fuelCapacity",
            comment_lines: ["The capacity of the fuel tank or in the case of electric cars, the battery. If there are multiple components for storage, this should indicate the total of all storage of the same type.\\n\\nTypical unit code(s): LTR for liters, GLL of US gallons, GLI for UK / imperial gallons, AMH for ampere-hours (for electrical vehicles)."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          fuel_consumption: {
            schema_name: "fuelConsumption",
            schema_url: "https://schema.org/fuelConsumption",
            comment_lines: ["The amount of fuel consumed for traveling a particular distance or temporal duration with the given vehicle (e.g. liters per 100 km).\\n\\n* Note 1: There are unfortunately no standard unit codes for liters per 100 km.  Use [[unitText]] to indicate the unit of measurement, e.g. L/100 km.\\n* Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.\\n* Note 3: Often, the absolute value is useful only when related to driving speed (\"at 80 km/h\") or usage pattern (\"city traffic\"). You can use [[valueReference]] to link the value for the fuel consumption to another value."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          fuel_efficiency: {
            schema_name: "fuelEfficiency",
            schema_url: "https://schema.org/fuelEfficiency",
            comment_lines: ["The distance traveled per unit of fuel used; most commonly miles per gallon (mpg) or kilometers per liter (km/L).\\n\\n* Note 1: There are unfortunately no standard unit codes for miles per gallon or kilometers per liter. Use [[unitText]] to indicate the unit of measurement, e.g. mpg or km/L.\\n* Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.\\n* Note 3: Often, the absolute value is useful only when related to driving speed (\"at 80 km/h\") or usage pattern (\"city traffic\"). You can use [[valueReference]] to link the value for the fuel economy to another value."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          fuel_type: {
            schema_name: "fuelType",
            schema_url: "https://schema.org/fuelType",
            comment_lines: ["The type of fuel suitable for the engine or engines of the vehicle. If the vehicle has only one engine, this property can be attached directly to the vehicle."].freeze,
            ranges: ["QualitativeValue", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          known_vehicle_damages: {
            schema_name: "knownVehicleDamages",
            schema_url: "https://schema.org/knownVehicleDamages",
            comment_lines: ["A textual description of known damages, both repaired and unrepaired."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          meets_emission_standard: {
            schema_name: "meetsEmissionStandard",
            schema_url: "https://schema.org/meetsEmissionStandard",
            comment_lines: ["Indicates that the vehicle meets the respective emission standard."].freeze,
            ranges: ["QualitativeValue", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          mileage_from_odometer: {
            schema_name: "mileageFromOdometer",
            schema_url: "https://schema.org/mileageFromOdometer",
            comment_lines: ["The total distance travelled by the particular vehicle since its initial production, as read from its odometer.\\n\\nTypical unit code(s): KMT for kilometers, SMI for statute miles."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          model_date: {
            schema_name: "modelDate",
            schema_url: "https://schema.org/modelDate",
            comment_lines: ["The release date of a vehicle model (often used to differentiate versions of the same make and model)."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_airbags: {
            schema_name: "numberOfAirbags",
            schema_url: "https://schema.org/numberOfAirbags",
            comment_lines: ["The number or type of airbags in the vehicle."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_axles: {
            schema_name: "numberOfAxles",
            schema_url: "https://schema.org/numberOfAxles",
            comment_lines: ["The number of axles.\\n\\nTypical unit code(s): C62."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_doors: {
            schema_name: "numberOfDoors",
            schema_url: "https://schema.org/numberOfDoors",
            comment_lines: ["The number of doors.\\n\\nTypical unit code(s): C62."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_forward_gears: {
            schema_name: "numberOfForwardGears",
            schema_url: "https://schema.org/numberOfForwardGears",
            comment_lines: ["The total number of forward gears available for the transmission system of the vehicle.\\n\\nTypical unit code(s): C62."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_previous_owners: {
            schema_name: "numberOfPreviousOwners",
            schema_url: "https://schema.org/numberOfPreviousOwners",
            comment_lines: ["The number of owners of the vehicle, including the current one.\\n\\nTypical unit code(s): C62."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          payload: {
            schema_name: "payload",
            schema_url: "https://schema.org/payload",
            comment_lines: ["The permitted weight of passengers and cargo, EXCLUDING the weight of the empty vehicle.\\n\\nTypical unit code(s): KGM for kilogram, LBR for pound\\n\\n* Note 1: Many databases specify the permitted TOTAL weight instead, which is the sum of [[weight]] and [[payload]]\\n* Note 2: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\\n* Note 3: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\\n* Note 4: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          production_date: {
            schema_name: "productionDate",
            schema_url: "https://schema.org/productionDate",
            comment_lines: ["The date of production of the item, e.g. vehicle."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          purchase_date: {
            schema_name: "purchaseDate",
            schema_url: "https://schema.org/purchaseDate",
            comment_lines: ["The date the item, e.g. vehicle, was purchased by the current owner."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          seating_capacity: {
            schema_name: "seatingCapacity",
            schema_url: "https://schema.org/seatingCapacity",
            comment_lines: ["The number of persons that can be seated (e.g. in a vehicle), both in terms of the physical space available, and in terms of limitations set by law.\\n\\nTypical unit code(s): C62 for persons."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          speed: {
            schema_name: "speed",
            schema_url: "https://schema.org/speed",
            comment_lines: ["The speed range of the vehicle. If the vehicle is powered by an engine, the upper limit of the speed range (indicated by [[maxValue]]) should be the maximum speed achievable under regular conditions.\\n\\nTypical unit code(s): KMH for km/h, HM for mile per hour (0.447 04 m/s), KNT for knot\\n\\n*Note 1: Use [[minValue]] and [[maxValue]] to indicate the range. Typically, the minimal value is zero.\\n* Note 2: There are many different ways of measuring the speed range. You can link to information about how the given value has been determined using the [[valueReference]] property."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          steering_position: {
            schema_name: "steeringPosition",
            schema_url: "https://schema.org/steeringPosition",
            comment_lines: ["The position of the steering wheel or similar device (mostly for cars)."].freeze,
            ranges: ["SteeringPositionValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          stupid_property: {
            schema_name: "stupidProperty",
            schema_url: "https://schema.org/stupidProperty",
            comment_lines: ["This is a StupidProperty! - for testing only."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          tongue_weight: {
            schema_name: "tongueWeight",
            schema_url: "https://schema.org/tongueWeight",
            comment_lines: ["The permitted vertical load (TWR) of a trailer attached to the vehicle. Also referred to as Tongue Load Rating (TLR) or Vertical Load Rating (VLR).\\n\\nTypical unit code(s): KGM for kilogram, LBR for pound\\n\\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          trailer_weight: {
            schema_name: "trailerWeight",
            schema_url: "https://schema.org/trailerWeight",
            comment_lines: ["The permitted weight of a trailer attached to the vehicle.\\n\\nTypical unit code(s): KGM for kilogram, LBR for pound\\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_configuration: {
            schema_name: "vehicleConfiguration",
            schema_url: "https://schema.org/vehicleConfiguration",
            comment_lines: ["A short text indicating the configuration of the vehicle, e.g. '5dr hatchback ST 2.5 MT 225 hp' or 'limited edition'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_engine: {
            schema_name: "vehicleEngine",
            schema_url: "https://schema.org/vehicleEngine",
            comment_lines: ["Information about the engine or engines of the vehicle."].freeze,
            ranges: ["EngineSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_identification_number: {
            schema_name: "vehicleIdentificationNumber",
            schema_url: "https://schema.org/vehicleIdentificationNumber",
            comment_lines: ["The Vehicle Identification Number (VIN) is a unique serial number used by the automotive industry to identify individual motor vehicles."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_interior_color: {
            schema_name: "vehicleInteriorColor",
            schema_url: "https://schema.org/vehicleInteriorColor",
            comment_lines: ["The color or color combination of the interior of the vehicle."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_interior_type: {
            schema_name: "vehicleInteriorType",
            schema_url: "https://schema.org/vehicleInteriorType",
            comment_lines: ["The type or material of the interior of the vehicle (e.g. synthetic fabric, leather, wood, etc.). While most interior types are characterized by the material used, an interior type can also be based on vehicle usage or target audience."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_model_date: {
            schema_name: "vehicleModelDate",
            schema_url: "https://schema.org/vehicleModelDate",
            comment_lines: ["The release date of a vehicle model (often used to differentiate versions of the same make and model)."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_seating_capacity: {
            schema_name: "vehicleSeatingCapacity",
            schema_url: "https://schema.org/vehicleSeatingCapacity",
            comment_lines: ["The number of passengers that can be seated in the vehicle, both in terms of the physical space available, and in terms of limitations set by law.\\n\\nTypical unit code(s): C62 for persons."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_special_usage: {
            schema_name: "vehicleSpecialUsage",
            schema_url: "https://schema.org/vehicleSpecialUsage",
            comment_lines: ["Indicates whether the vehicle has been used for special purposes, like commercial rental, driving school, or as a taxi. The legislation in many countries requires this information to be revealed when offering a car for sale."].freeze,
            ranges: ["CarUsageType", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          vehicle_transmission: {
            schema_name: "vehicleTransmission",
            schema_url: "https://schema.org/vehicleTransmission",
            comment_lines: ["The type of component used for transmitting the power from a rotating power source to the wheels or other relevant component(s) (\"gearbox\" for cars)."].freeze,
            ranges: ["QualitativeValue", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          weight_total: {
            schema_name: "weightTotal",
            schema_url: "https://schema.org/weightTotal",
            comment_lines: ["The permitted total weight of the loaded vehicle, including passengers and cargo and the weight of the empty vehicle.\\n\\nTypical unit code(s): KGM for kilogram, LBR for pound\\n\\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          wheelbase: {
            schema_name: "wheelbase",
            schema_url: "https://schema.org/wheelbase",
            comment_lines: ["The distance between the centers of the front and rear wheels.\\n\\nTypical unit code(s): CMT for centimeters, MTR for meters, INH for inches, FOT for foot/feet."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The time needed to accelerate the vehicle from a given start velocity to a given target velocity.\n\nTypical unit code(s): SEC for seconds\n\n* Note: There are unfortunately no standard unit codes for seconds/0..100 km/h or seconds/0..60 mph. Simply use "SEC" for seconds and indicate the velocities in the [[name]] of the [[QuantitativeValue]], or use [[valueReference]] with a [[QuantitativeValue]] of 0..60 mph or 0..100 km/h to specify the reference speeds.
      def acceleration_time
        read_property(:acceleration_time)
      end

      # The time needed to accelerate the vehicle from a given start velocity to a given target velocity.\n\nTypical unit code(s): SEC for seconds\n\n* Note: There are unfortunately no standard unit codes for seconds/0..100 km/h or seconds/0..60 mph. Simply use "SEC" for seconds and indicate the velocities in the [[name]] of the [[QuantitativeValue]], or use [[valueReference]] with a [[QuantitativeValue]] of 0..60 mph or 0..100 km/h to specify the reference speeds.
      def acceleration_time=(value)
        write_property(:acceleration_time, value)
      end

      # Indicates the design and body style of the vehicle (e.g. station wagon, hatchback, etc.).
      def body_type
        read_property(:body_type)
      end

      # Indicates the design and body style of the vehicle (e.g. station wagon, hatchback, etc.).
      def body_type=(value)
        write_property(:body_type, value)
      end

      # A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles.
      def call_sign
        read_property(:call_sign)
      end

      # A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles.
      def call_sign=(value)
        write_property(:call_sign, value)
      end

      # The available volume for cargo or luggage. For automobiles, this is usually the trunk volume.\n\nTypical unit code(s): LTR for liters, FTQ for cubic foot/feet\n\nNote: You can use [[minValue]] and [[maxValue]] to indicate ranges.
      def cargo_volume
        read_property(:cargo_volume)
      end

      # The available volume for cargo or luggage. For automobiles, this is usually the trunk volume.\n\nTypical unit code(s): LTR for liters, FTQ for cubic foot/feet\n\nNote: You can use [[minValue]] and [[maxValue]] to indicate ranges.
      def cargo_volume=(value)
        write_property(:cargo_volume, value)
      end

      # The date of the first registration of the vehicle with the respective public authorities.
      def date_vehicle_first_registered
        read_property(:date_vehicle_first_registered)
      end

      # The date of the first registration of the vehicle with the respective public authorities.
      def date_vehicle_first_registered=(value)
        write_property(:date_vehicle_first_registered, value)
      end

      # The drive wheel configuration, i.e. which roadwheels will receive torque from the vehicle's engine via the drivetrain.
      def drive_wheel_configuration
        read_property(:drive_wheel_configuration)
      end

      # The drive wheel configuration, i.e. which roadwheels will receive torque from the vehicle's engine via the drivetrain.
      def drive_wheel_configuration=(value)
        write_property(:drive_wheel_configuration, value)
      end

      # The CO2 emissions in g/km. When used in combination with a QuantitativeValue, put "g/km" into the unitText property of that value, since there is no UN/CEFACT Common Code for "g/km".
      def emissions_co2
        read_property(:emissions_co2)
      end

      # The CO2 emissions in g/km. When used in combination with a QuantitativeValue, put "g/km" into the unitText property of that value, since there is no UN/CEFACT Common Code for "g/km".
      def emissions_co2=(value)
        write_property(:emissions_co2, value)
      end

      # The capacity of the fuel tank or in the case of electric cars, the battery. If there are multiple components for storage, this should indicate the total of all storage of the same type.\n\nTypical unit code(s): LTR for liters, GLL of US gallons, GLI for UK / imperial gallons, AMH for ampere-hours (for electrical vehicles).
      def fuel_capacity
        read_property(:fuel_capacity)
      end

      # The capacity of the fuel tank or in the case of electric cars, the battery. If there are multiple components for storage, this should indicate the total of all storage of the same type.\n\nTypical unit code(s): LTR for liters, GLL of US gallons, GLI for UK / imperial gallons, AMH for ampere-hours (for electrical vehicles).
      def fuel_capacity=(value)
        write_property(:fuel_capacity, value)
      end

      # The amount of fuel consumed for traveling a particular distance or temporal duration with the given vehicle (e.g. liters per 100 km).\n\n* Note 1: There are unfortunately no standard unit codes for liters per 100 km.  Use [[unitText]] to indicate the unit of measurement, e.g. L/100 km.\n* Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.\n* Note 3: Often, the absolute value is useful only when related to driving speed ("at 80 km/h") or usage pattern ("city traffic"). You can use [[valueReference]] to link the value for the fuel consumption to another value.
      def fuel_consumption
        read_property(:fuel_consumption)
      end

      # The amount of fuel consumed for traveling a particular distance or temporal duration with the given vehicle (e.g. liters per 100 km).\n\n* Note 1: There are unfortunately no standard unit codes for liters per 100 km.  Use [[unitText]] to indicate the unit of measurement, e.g. L/100 km.\n* Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.\n* Note 3: Often, the absolute value is useful only when related to driving speed ("at 80 km/h") or usage pattern ("city traffic"). You can use [[valueReference]] to link the value for the fuel consumption to another value.
      def fuel_consumption=(value)
        write_property(:fuel_consumption, value)
      end

      # The distance traveled per unit of fuel used; most commonly miles per gallon (mpg) or kilometers per liter (km/L).\n\n* Note 1: There are unfortunately no standard unit codes for miles per gallon or kilometers per liter. Use [[unitText]] to indicate the unit of measurement, e.g. mpg or km/L.\n* Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.\n* Note 3: Often, the absolute value is useful only when related to driving speed ("at 80 km/h") or usage pattern ("city traffic"). You can use [[valueReference]] to link the value for the fuel economy to another value.
      def fuel_efficiency
        read_property(:fuel_efficiency)
      end

      # The distance traveled per unit of fuel used; most commonly miles per gallon (mpg) or kilometers per liter (km/L).\n\n* Note 1: There are unfortunately no standard unit codes for miles per gallon or kilometers per liter. Use [[unitText]] to indicate the unit of measurement, e.g. mpg or km/L.\n* Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.\n* Note 3: Often, the absolute value is useful only when related to driving speed ("at 80 km/h") or usage pattern ("city traffic"). You can use [[valueReference]] to link the value for the fuel economy to another value.
      def fuel_efficiency=(value)
        write_property(:fuel_efficiency, value)
      end

      # The type of fuel suitable for the engine or engines of the vehicle. If the vehicle has only one engine, this property can be attached directly to the vehicle.
      def fuel_type
        read_property(:fuel_type)
      end

      # The type of fuel suitable for the engine or engines of the vehicle. If the vehicle has only one engine, this property can be attached directly to the vehicle.
      def fuel_type=(value)
        write_property(:fuel_type, value)
      end

      # A textual description of known damages, both repaired and unrepaired.
      def known_vehicle_damages
        read_property(:known_vehicle_damages)
      end

      # A textual description of known damages, both repaired and unrepaired.
      def known_vehicle_damages=(value)
        write_property(:known_vehicle_damages, value)
      end

      # Indicates that the vehicle meets the respective emission standard.
      def meets_emission_standard
        read_property(:meets_emission_standard)
      end

      # Indicates that the vehicle meets the respective emission standard.
      def meets_emission_standard=(value)
        write_property(:meets_emission_standard, value)
      end

      # The total distance travelled by the particular vehicle since its initial production, as read from its odometer.\n\nTypical unit code(s): KMT for kilometers, SMI for statute miles.
      def mileage_from_odometer
        read_property(:mileage_from_odometer)
      end

      # The total distance travelled by the particular vehicle since its initial production, as read from its odometer.\n\nTypical unit code(s): KMT for kilometers, SMI for statute miles.
      def mileage_from_odometer=(value)
        write_property(:mileage_from_odometer, value)
      end

      # The release date of a vehicle model (often used to differentiate versions of the same make and model).
      def model_date
        read_property(:model_date)
      end

      # The release date of a vehicle model (often used to differentiate versions of the same make and model).
      def model_date=(value)
        write_property(:model_date, value)
      end

      # The number or type of airbags in the vehicle.
      def number_of_airbags
        read_property(:number_of_airbags)
      end

      # The number or type of airbags in the vehicle.
      def number_of_airbags=(value)
        write_property(:number_of_airbags, value)
      end

      # The number of axles.\n\nTypical unit code(s): C62.
      def number_of_axles
        read_property(:number_of_axles)
      end

      # The number of axles.\n\nTypical unit code(s): C62.
      def number_of_axles=(value)
        write_property(:number_of_axles, value)
      end

      # The number of doors.\n\nTypical unit code(s): C62.
      def number_of_doors
        read_property(:number_of_doors)
      end

      # The number of doors.\n\nTypical unit code(s): C62.
      def number_of_doors=(value)
        write_property(:number_of_doors, value)
      end

      # The total number of forward gears available for the transmission system of the vehicle.\n\nTypical unit code(s): C62.
      def number_of_forward_gears
        read_property(:number_of_forward_gears)
      end

      # The total number of forward gears available for the transmission system of the vehicle.\n\nTypical unit code(s): C62.
      def number_of_forward_gears=(value)
        write_property(:number_of_forward_gears, value)
      end

      # The number of owners of the vehicle, including the current one.\n\nTypical unit code(s): C62.
      def number_of_previous_owners
        read_property(:number_of_previous_owners)
      end

      # The number of owners of the vehicle, including the current one.\n\nTypical unit code(s): C62.
      def number_of_previous_owners=(value)
        write_property(:number_of_previous_owners, value)
      end

      # The permitted weight of passengers and cargo, EXCLUDING the weight of the empty vehicle.\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n\n* Note 1: Many databases specify the permitted TOTAL weight instead, which is the sum of [[weight]] and [[payload]]\n* Note 2: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\n* Note 3: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\n* Note 4: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.
      def payload
        read_property(:payload)
      end

      # The permitted weight of passengers and cargo, EXCLUDING the weight of the empty vehicle.\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n\n* Note 1: Many databases specify the permitted TOTAL weight instead, which is the sum of [[weight]] and [[payload]]\n* Note 2: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\n* Note 3: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\n* Note 4: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.
      def payload=(value)
        write_property(:payload, value)
      end

      # The date of production of the item, e.g. vehicle.
      def production_date
        read_property(:production_date)
      end

      # The date of production of the item, e.g. vehicle.
      def production_date=(value)
        write_property(:production_date, value)
      end

      # The date the item, e.g. vehicle, was purchased by the current owner.
      def purchase_date
        read_property(:purchase_date)
      end

      # The date the item, e.g. vehicle, was purchased by the current owner.
      def purchase_date=(value)
        write_property(:purchase_date, value)
      end

      # The number of persons that can be seated (e.g. in a vehicle), both in terms of the physical space available, and in terms of limitations set by law.\n\nTypical unit code(s): C62 for persons.
      def seating_capacity
        read_property(:seating_capacity)
      end

      # The number of persons that can be seated (e.g. in a vehicle), both in terms of the physical space available, and in terms of limitations set by law.\n\nTypical unit code(s): C62 for persons.
      def seating_capacity=(value)
        write_property(:seating_capacity, value)
      end

      # The speed range of the vehicle. If the vehicle is powered by an engine, the upper limit of the speed range (indicated by [[maxValue]]) should be the maximum speed achievable under regular conditions.\n\nTypical unit code(s): KMH for km/h, HM for mile per hour (0.447 04 m/s), KNT for knot\n\n*Note 1: Use [[minValue]] and [[maxValue]] to indicate the range. Typically, the minimal value is zero.\n* Note 2: There are many different ways of measuring the speed range. You can link to information about how the given value has been determined using the [[valueReference]] property.
      def speed
        read_property(:speed)
      end

      # The speed range of the vehicle. If the vehicle is powered by an engine, the upper limit of the speed range (indicated by [[maxValue]]) should be the maximum speed achievable under regular conditions.\n\nTypical unit code(s): KMH for km/h, HM for mile per hour (0.447 04 m/s), KNT for knot\n\n*Note 1: Use [[minValue]] and [[maxValue]] to indicate the range. Typically, the minimal value is zero.\n* Note 2: There are many different ways of measuring the speed range. You can link to information about how the given value has been determined using the [[valueReference]] property.
      def speed=(value)
        write_property(:speed, value)
      end

      # The position of the steering wheel or similar device (mostly for cars).
      def steering_position
        read_property(:steering_position)
      end

      # The position of the steering wheel or similar device (mostly for cars).
      def steering_position=(value)
        write_property(:steering_position, value)
      end

      # This is a StupidProperty! - for testing only.
      def stupid_property
        read_property(:stupid_property)
      end

      # This is a StupidProperty! - for testing only.
      def stupid_property=(value)
        write_property(:stupid_property, value)
      end

      # The permitted vertical load (TWR) of a trailer attached to the vehicle. Also referred to as Tongue Load Rating (TLR) or Vertical Load Rating (VLR).\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.
      def tongue_weight
        read_property(:tongue_weight)
      end

      # The permitted vertical load (TWR) of a trailer attached to the vehicle. Also referred to as Tongue Load Rating (TLR) or Vertical Load Rating (VLR).\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.
      def tongue_weight=(value)
        write_property(:tongue_weight, value)
      end

      # The permitted weight of a trailer attached to the vehicle.\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.
      def trailer_weight
        read_property(:trailer_weight)
      end

      # The permitted weight of a trailer attached to the vehicle.\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.
      def trailer_weight=(value)
        write_property(:trailer_weight, value)
      end

      # A short text indicating the configuration of the vehicle, e.g. '5dr hatchback ST 2.5 MT 225 hp' or 'limited edition'.
      def vehicle_configuration
        read_property(:vehicle_configuration)
      end

      # A short text indicating the configuration of the vehicle, e.g. '5dr hatchback ST 2.5 MT 225 hp' or 'limited edition'.
      def vehicle_configuration=(value)
        write_property(:vehicle_configuration, value)
      end

      # Information about the engine or engines of the vehicle.
      def vehicle_engine
        read_property(:vehicle_engine)
      end

      # Information about the engine or engines of the vehicle.
      def vehicle_engine=(value)
        write_property(:vehicle_engine, value)
      end

      # The Vehicle Identification Number (VIN) is a unique serial number used by the automotive industry to identify individual motor vehicles.
      def vehicle_identification_number
        read_property(:vehicle_identification_number)
      end

      # The Vehicle Identification Number (VIN) is a unique serial number used by the automotive industry to identify individual motor vehicles.
      def vehicle_identification_number=(value)
        write_property(:vehicle_identification_number, value)
      end

      # The color or color combination of the interior of the vehicle.
      def vehicle_interior_color
        read_property(:vehicle_interior_color)
      end

      # The color or color combination of the interior of the vehicle.
      def vehicle_interior_color=(value)
        write_property(:vehicle_interior_color, value)
      end

      # The type or material of the interior of the vehicle (e.g. synthetic fabric, leather, wood, etc.). While most interior types are characterized by the material used, an interior type can also be based on vehicle usage or target audience.
      def vehicle_interior_type
        read_property(:vehicle_interior_type)
      end

      # The type or material of the interior of the vehicle (e.g. synthetic fabric, leather, wood, etc.). While most interior types are characterized by the material used, an interior type can also be based on vehicle usage or target audience.
      def vehicle_interior_type=(value)
        write_property(:vehicle_interior_type, value)
      end

      # The release date of a vehicle model (often used to differentiate versions of the same make and model).
      def vehicle_model_date
        read_property(:vehicle_model_date)
      end

      # The release date of a vehicle model (often used to differentiate versions of the same make and model).
      def vehicle_model_date=(value)
        write_property(:vehicle_model_date, value)
      end

      # The number of passengers that can be seated in the vehicle, both in terms of the physical space available, and in terms of limitations set by law.\n\nTypical unit code(s): C62 for persons.
      def vehicle_seating_capacity
        read_property(:vehicle_seating_capacity)
      end

      # The number of passengers that can be seated in the vehicle, both in terms of the physical space available, and in terms of limitations set by law.\n\nTypical unit code(s): C62 for persons.
      def vehicle_seating_capacity=(value)
        write_property(:vehicle_seating_capacity, value)
      end

      # Indicates whether the vehicle has been used for special purposes, like commercial rental, driving school, or as a taxi. The legislation in many countries requires this information to be revealed when offering a car for sale.
      def vehicle_special_usage
        read_property(:vehicle_special_usage)
      end

      # Indicates whether the vehicle has been used for special purposes, like commercial rental, driving school, or as a taxi. The legislation in many countries requires this information to be revealed when offering a car for sale.
      def vehicle_special_usage=(value)
        write_property(:vehicle_special_usage, value)
      end

      # The type of component used for transmitting the power from a rotating power source to the wheels or other relevant component(s) ("gearbox" for cars).
      def vehicle_transmission
        read_property(:vehicle_transmission)
      end

      # The type of component used for transmitting the power from a rotating power source to the wheels or other relevant component(s) ("gearbox" for cars).
      def vehicle_transmission=(value)
        write_property(:vehicle_transmission, value)
      end

      # The permitted total weight of the loaded vehicle, including passengers and cargo and the weight of the empty vehicle.\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.
      def weight_total
        read_property(:weight_total)
      end

      # The permitted total weight of the loaded vehicle, including passengers and cargo and the weight of the empty vehicle.\n\nTypical unit code(s): KGM for kilogram, LBR for pound\n\n* Note 1: You can indicate additional information in the [[name]] of the [[QuantitativeValue]] node.\n* Note 2: You may also link to a [[QualitativeValue]] node that provides additional information using [[valueReference]].\n* Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.
      def weight_total=(value)
        write_property(:weight_total, value)
      end

      # The distance between the centers of the front and rear wheels.\n\nTypical unit code(s): CMT for centimeters, MTR for meters, INH for inches, FOT for foot/feet.
      def wheelbase
        read_property(:wheelbase)
      end

      # The distance between the centers of the front and rear wheels.\n\nTypical unit code(s): CMT for centimeters, MTR for meters, INH for inches, FOT for foot/feet.
      def wheelbase=(value)
        write_property(:wheelbase, value)
      end
    end
  end
end
