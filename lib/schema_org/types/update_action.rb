module SchemaOrg
  # https://schema.org/UpdateAction
  #
  # The act of managing by changing/editing the state of the object.
  class UpdateAction < Base
    include Mixins::UpdateAction
  end
end
