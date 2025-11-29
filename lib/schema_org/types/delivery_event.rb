module SchemaOrg
  # https://schema.org/DeliveryEvent
  #
  # An event involving the delivery of an item.
  class DeliveryEvent < Base
    include Mixins::DeliveryEvent
  end
end
