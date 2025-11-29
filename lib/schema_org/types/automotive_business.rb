module SchemaOrg
  # https://schema.org/AutomotiveBusiness
  #
  # Car repair, sales, or parts.
  class AutomotiveBusiness < Base
    include Mixins::AutomotiveBusiness
  end
end
