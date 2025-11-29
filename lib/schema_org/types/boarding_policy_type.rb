module SchemaOrg
  # https://schema.org/BoardingPolicyType
  #
  # A type of boarding policy used by an airline.
  class BoardingPolicyType < Base
    include Mixins::BoardingPolicyType
  end
end
