module SchemaOrg
  # https://schema.org/Attorney
  #
  # Professional service: Attorney. \n\nThis type is deprecated - [[LegalService]] is more inclusive and less ambiguous.
  class Attorney < Base
    include Mixins::Attorney
  end
end
