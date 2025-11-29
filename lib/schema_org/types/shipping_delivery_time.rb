module SchemaOrg
  # https://schema.org/ShippingDeliveryTime
  #
  # ShippingDeliveryTime provides various pieces of information about delivery times for shipping.
  class ShippingDeliveryTime < Base
    include Mixins::ShippingDeliveryTime
  end
end
