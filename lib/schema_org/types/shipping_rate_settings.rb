module SchemaOrg
  # https://schema.org/ShippingRateSettings
  #
  # A ShippingRateSettings represents re-usable pieces of shipping information. It is designed for publication on an URL that may be referenced via the [[shippingSettingsLink]] property of an [[OfferShippingDetails]]. Several occurrences can be published, distinguished and matched (i.e. identified/referenced) by their different values for [[shippingLabel]].
  class ShippingRateSettings < Base
    include Mixins::ShippingRateSettings
  end
end
