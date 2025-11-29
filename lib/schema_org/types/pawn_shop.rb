module SchemaOrg
  # https://schema.org/PawnShop
  #
  # A shop that will buy, or lend money against the security of, personal possessions.
  class PawnShop < Base
    include Mixins::PawnShop
  end
end
