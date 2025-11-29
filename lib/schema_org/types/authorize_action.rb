module SchemaOrg
  # https://schema.org/AuthorizeAction
  #
  # The act of granting permission to an object.
  class AuthorizeAction < Base
    include Mixins::AuthorizeAction
  end
end
