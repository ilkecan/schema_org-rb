module SchemaOrg
  # https://schema.org/IgnoreAction
  #
  # The act of intentionally disregarding the object. An agent ignores an object.
  class IgnoreAction < Base
    include Mixins::IgnoreAction
  end
end
