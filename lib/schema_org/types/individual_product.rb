module SchemaOrg
  # https://schema.org/IndividualProduct
  #
  # A single, identifiable product instance (e.g. a laptop with a particular serial number).
  class IndividualProduct < Base
    include Mixins::IndividualProduct
  end
end
