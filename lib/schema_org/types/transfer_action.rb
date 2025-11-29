module SchemaOrg
  # https://schema.org/TransferAction
  #
  # The act of transferring/moving (abstract or concrete) animate or inanimate objects from one place to another.
  class TransferAction < Base
    include Mixins::TransferAction
  end
end
