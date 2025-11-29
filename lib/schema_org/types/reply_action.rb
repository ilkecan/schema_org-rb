module SchemaOrg
  # https://schema.org/ReplyAction
  #
  # The act of responding to a question/message asked/sent by the object. Related to [[AskAction]].\n\nRelated actions:\n\n* [[AskAction]]: Appears generally as an origin of a ReplyAction.
  class ReplyAction < Base
    include Mixins::ReplyAction
  end
end
