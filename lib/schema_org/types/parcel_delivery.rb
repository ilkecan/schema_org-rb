module SchemaOrg
  # https://schema.org/ParcelDelivery
  #
  # The delivery of a parcel either via the postal service or a commercial service.
  class ParcelDelivery < Base
    include Mixins::ParcelDelivery
  end
end
