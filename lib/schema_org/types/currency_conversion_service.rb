module SchemaOrg
  # https://schema.org/CurrencyConversionService
  #
  # A service to convert funds from one currency to another currency.
  class CurrencyConversionService
    include Mixins::CurrencyConversionService
  end
end
