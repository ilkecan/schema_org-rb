module SchemaOrg
  # https://schema.org/Taxi
  #
  # NOTE: Superseded by `TaxiService`.
  #
  # A taxi.
  class Taxi < Base
    include Mixins::Taxi
  end
end
