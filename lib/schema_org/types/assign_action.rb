module SchemaOrg
  # https://schema.org/AssignAction
  #
  # The act of allocating an action/event/task to some destination (someone or something).
  class AssignAction < Base
    include Mixins::AssignAction
  end
end
