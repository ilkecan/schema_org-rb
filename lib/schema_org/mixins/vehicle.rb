require "active_support/concern"

module SchemaOrg
  module Mixins
    module Vehicle
      extend ActiveSupport::Concern

      include Product

      included do
        option :cargo_volume, optional: true # The available volume for cargo or luggage. For automobiles, this is usually the trunk volume.\n\nTypical unit code(s): LTR for liters, FTQ for cubic foot/feet\n\nNote: You can use [[minValue]] and [[maxValue]] to indicate ranges.
        option :date_vehicle_first_registered, optional: true # The date of the first registration of the vehicle with the respective public authorities.
        option :drive_wheel_configuration, optional: true # The drive wheel configuration, i.e. which roadwheels will receive torque from the vehicle's engine via the drivetrain.
        option :fuel_consumption, optional: true # The amount of fuel consumed for traveling a particular distance or temporal duration with the given vehicle (e.g. liters per 100 km).\n\n* Note 1: There are unfortunately no standard unit codes for liters per 100 km.  Use [[unitText]] to indicate the unit of measurement, e.g. L/100 km.\n* Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.\n* Note 3: Often, the absolute value is useful only when related to driving speed ("at 80 km/h") or usage pattern ("city traffic"). You can use [[valueReference]] to link the value for the fuel consumption to another value.
        option :fuel_efficiency, optional: true # The distance traveled per unit of fuel used; most commonly miles per gallon (mpg) or kilometers per liter (km/L).\n\n* Note 1: There are unfortunately no standard unit codes for miles per gallon or kilometers per liter. Use [[unitText]] to indicate the unit of measurement, e.g. mpg or km/L.\n* Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.\n* Note 3: Often, the absolute value is useful only when related to driving speed ("at 80 km/h") or usage pattern ("city traffic"). You can use [[valueReference]] to link the value for the fuel economy to another value.
        option :fuel_type, optional: true # The type of fuel suitable for the engine or engines of the vehicle. If the vehicle has only one engine, this property can be attached directly to the vehicle.
        option :known_vehicle_damages, optional: true # A textual description of known damages, both repaired and unrepaired.
        option :mileage_from_odometer, optional: true # The total distance travelled by the particular vehicle since its initial production, as read from its odometer.\n\nTypical unit code(s): KMT for kilometers, SMI for statute miles.
        option :number_of_airbags, optional: true # The number or type of airbags in the vehicle.
        option :number_of_axles, optional: true # The number of axles.\n\nTypical unit code(s): C62.
        option :number_of_doors, optional: true # The number of doors.\n\nTypical unit code(s): C62.
        option :number_of_forward_gears, optional: true # The total number of forward gears available for the transmission system of the vehicle.\n\nTypical unit code(s): C62.
        option :number_of_previous_owners, optional: true # The number of owners of the vehicle, including the current one.\n\nTypical unit code(s): C62.
        option :production_date, optional: true # The date of production of the item, e.g. vehicle.
        option :purchase_date, optional: true # The date the item, e.g. vehicle, was purchased by the current owner.
        option :steering_position, optional: true # The position of the steering wheel or similar device (mostly for cars).
        option :vehicle_configuration, optional: true # A short text indicating the configuration of the vehicle, e.g. '5dr hatchback ST 2.5 MT 225 hp' or 'limited edition'.
        option :vehicle_engine, optional: true # Information about the engine or engines of the vehicle.
        option :vehicle_identification_number, optional: true # The Vehicle Identification Number (VIN) is a unique serial number used by the automotive industry to identify individual motor vehicles.
        option :vehicle_interior_color, optional: true # The color or color combination of the interior of the vehicle.
        option :vehicle_interior_type, optional: true # The type or material of the interior of the vehicle (e.g. synthetic fabric, leather, wood, etc.). While most interior types are characterized by the material used, an interior type can also be based on vehicle usage or target audience.
        option :vehicle_model_date, optional: true # The release date of a vehicle model (often used to differentiate versions of the same make and model).
        option :vehicle_seating_capacity, optional: true # The number of passengers that can be seated in the vehicle, both in terms of the physical space available, and in terms of limitations set by law.\n\nTypical unit code(s): C62 for persons.
        option :vehicle_special_usage, optional: true # Indicates whether the vehicle has been used for special purposes, like commercial rental, driving school, or as a taxi. The legislation in many countries requires this information to be revealed when offering a car for sale.
        option :vehicle_transmission, optional: true # The type of component used for transmitting the power from a rotating power source to the wheels or other relevant component(s) ("gearbox" for cars).
      end
    end
  end
end
