module SchemaOrg
  # https://schema.org/InviteAction
  #
  # The act of asking someone to attend an event. Reciprocal of RsvpAction.
  class InviteAction < Base
    include Mixins::InviteAction
  end
end
