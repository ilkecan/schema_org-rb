require "active_support/concern"

module SchemaOrg
  module Mixins
    module House
      extend ActiveSupport::Concern

      include Accommodation

      included do
        option :number_of_rooms, optional: true # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business. Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
      end
    end
  end
end
