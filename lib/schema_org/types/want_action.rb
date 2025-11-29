module SchemaOrg
  # https://schema.org/WantAction
  #
  # The act of expressing a desire about the object. An agent wants an object.
  class WantAction < Base
    include Mixins::WantAction
  end
end
