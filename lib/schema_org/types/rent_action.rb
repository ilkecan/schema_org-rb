module SchemaOrg
  # https://schema.org/RentAction
  #
  # The act of giving money in return for temporary use, but not ownership, of an object such as a vehicle or property. For example, an agent rents a property from a landlord in exchange for a periodic payment.
  class RentAction < Base
    include Mixins::RentAction
  end
end
