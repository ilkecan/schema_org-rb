module SchemaOrg
  # https://schema.org/ConfirmAction
  #
  # The act of notifying someone that a future event/action is going to happen as expected.\n\nRelated actions:\n\n* [[CancelAction]]: The antonym of ConfirmAction.
  class ConfirmAction
    include Mixins::ConfirmAction
  end
end
