require "active_support/concern"

module SchemaOrg
  module Mixins
    module HotelRoom
      extend ActiveSupport::Concern

      include Room

      included do
        option :bed, optional: true # The type of bed or beds included in the accommodation. For the single case of just one bed of a certain type, you use bed directly with a text.       If you want to indicate the quantity of a certain kind of bed, use an instance of BedDetails. For more detailed information, use the amenityFeature property.
        option :occupancy, optional: true # The allowed total occupancy for the accommodation in persons (including infants etc). For individual accommodations, this is not necessarily the legal maximum but defines the permitted usage as per the contractual agreement (e.g. a double room used by a single person). Typical unit code(s): C62 for person.
      end
    end
  end
end
