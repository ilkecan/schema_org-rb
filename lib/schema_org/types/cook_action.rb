module SchemaOrg
  # https://schema.org/CookAction
  #
  # The act of producing/preparing food.
  class CookAction < Base
    include Mixins::CookAction
  end
end
