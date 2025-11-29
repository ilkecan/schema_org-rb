module SchemaOrg
  # https://schema.org/BefriendAction
  #
  # The act of forming a personal connection with someone (object) mutually/bidirectionally/symmetrically.\n\nRelated actions:\n\n* [[FollowAction]]: Unlike FollowAction, BefriendAction implies that the connection is reciprocal.
  class BefriendAction < Base
    include Mixins::BefriendAction
  end
end
