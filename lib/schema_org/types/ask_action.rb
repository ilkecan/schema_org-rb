module SchemaOrg
  # https://schema.org/AskAction
  #
  # The act of posing a question / favor to someone.\n\nRelated actions:\n\n* [[ReplyAction]]: Appears generally as a response to AskAction.
  class AskAction < Base
    include Mixins::AskAction
  end
end
