module SchemaOrg
  # https://schema.org/TaxiStand
  #
  # A taxi stand.
  class TaxiStand < Base
    include Mixins::TaxiStand
  end
end
