module SchemaOrg
  # https://schema.org/ApplyAction
  #
  # The act of registering to an organization/service without the guarantee to receive it.\n\nRelated actions:\n\n* [[RegisterAction]]: Unlike RegisterAction, ApplyAction has no guarantees that the application will be accepted.
  class ApplyAction
    include Mixins::ApplyAction
  end
end
