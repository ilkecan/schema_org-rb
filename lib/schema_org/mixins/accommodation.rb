require "active_support/concern"

module SchemaOrg
  module Mixins
    module Accommodation
      extend ActiveSupport::Concern

      include Place

      included do
        option :amenity_feature # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
        option :bed # The type of bed or beds included in the accommodation. For the single case of just one bed of a certain type, you use bed directly with a text.       If you want to indicate the quantity of a certain kind of bed, use an instance of BedDetails. For more detailed information, use the amenityFeature property.
        option :floor_size # The size of the accommodation, e.g. in square meter or squarefoot. Typical unit code(s): MTK for square meter, FTK for square foot, or YDK for square yard.
        option :number_of_rooms # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business. Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
        option :occupancy # The allowed total occupancy for the accommodation in persons (including infants etc). For individual accommodations, this is not necessarily the legal maximum but defines the permitted usage as per the contractual agreement (e.g. a double room used by a single person). Typical unit code(s): C62 for person.
        option :permitted_usage # Indications regarding the permitted usage of the accommodation.
        option :pets_allowed # Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value.
      end
    end
  end
end
