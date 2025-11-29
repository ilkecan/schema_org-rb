module SchemaOrg
  # https://schema.org/LoseAction
  #
  # The act of being defeated in a competitive activity.
  class LoseAction < Base
    include Mixins::LoseAction
  end
end
