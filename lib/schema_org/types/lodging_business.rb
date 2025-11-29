module SchemaOrg
  # https://schema.org/LodgingBusiness
  #
  # A lodging business, such as a motel, hotel, or inn.
  class LodgingBusiness < Base
    include Mixins::LodgingBusiness
  end
end
