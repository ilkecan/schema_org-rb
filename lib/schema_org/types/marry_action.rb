module SchemaOrg
  # https://schema.org/MarryAction
  #
  # The act of marrying a person.
  class MarryAction < Base
    include Mixins::MarryAction
  end
end
