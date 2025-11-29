module SchemaOrg
  # https://schema.org/AllocateAction
  #
  # The act of organizing tasks/objects/events by associating resources to it.
  class AllocateAction < Base
    include Mixins::AllocateAction
  end
end
