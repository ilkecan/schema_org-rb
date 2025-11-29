module SchemaOrg
  # https://schema.org/DeliveryChargeSpecification
  #
  # The price for the delivery of an offer using a particular delivery method.
  class DeliveryChargeSpecification < Base
    include Mixins::DeliveryChargeSpecification
  end
end
