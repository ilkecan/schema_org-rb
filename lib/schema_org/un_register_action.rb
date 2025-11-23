module SchemaOrg
  # https://schema.org/UnRegisterAction
  #
  # The act of un-registering from a service.\n\nRelated actions:\n\n* [[RegisterAction]]: antonym of UnRegisterAction.\n* [[LeaveAction]]: Unlike LeaveAction, UnRegisterAction implies that you are unregistering from a service you were previously registered, rather than leaving a team/group of people.
  class UnRegisterAction
    include Types::UnRegisterAction
  end
end
