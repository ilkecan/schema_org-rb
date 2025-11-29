module SchemaOrg
  # https://schema.org/AutoRental
  #
  # A car rental business.
  class AutoRental < Base
    include Mixins::AutoRental
  end
end
