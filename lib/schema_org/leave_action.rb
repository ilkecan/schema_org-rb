module SchemaOrg
  # https://schema.org/LeaveAction
  #
  # An agent leaves an event / group with participants/friends at a location.\n\nRelated actions:\n\n* [[JoinAction]]: The antonym of LeaveAction.\n* [[UnRegisterAction]]: Unlike UnRegisterAction, LeaveAction implies leaving a group/team of people rather than a service.
  class LeaveAction < InteractAction
  end
end
