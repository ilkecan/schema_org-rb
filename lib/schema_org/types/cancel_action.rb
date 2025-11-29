module SchemaOrg
  # https://schema.org/CancelAction
  #
  # The act of asserting that a future event/action is no longer going to happen.\n\nRelated actions:\n\n* [[ConfirmAction]]: The antonym of CancelAction.
  class CancelAction < Base
    include Mixins::CancelAction
  end
end
