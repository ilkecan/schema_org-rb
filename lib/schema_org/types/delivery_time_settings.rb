module SchemaOrg
  # https://schema.org/DeliveryTimeSettings
  #
  # A DeliveryTimeSettings represents re-usable pieces of shipping information, relating to timing. It is designed for publication on an URL that may be referenced via the [[shippingSettingsLink]] property of an [[OfferShippingDetails]]. Several occurrences can be published, distinguished (and identified/referenced) by their different values for [[transitTimeLabel]].
  class DeliveryTimeSettings
    include Mixins::DeliveryTimeSettings
  end
end
