module SchemaOrg
  # https://schema.org/Quantity
  #
  # Quantities such as distance, time, mass, weight, etc. Particular instances of say Mass are entities like '3 kg' or '4 milligrams'.
  class Quantity
    include Mixins::Quantity
  end
end
