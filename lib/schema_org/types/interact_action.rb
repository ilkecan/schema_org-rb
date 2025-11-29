module SchemaOrg
  # https://schema.org/InteractAction
  #
  # The act of interacting with another person or organization.
  class InteractAction < Base
    include Mixins::InteractAction
  end
end
