module SchemaOrg
  # https://schema.org/CommunicateAction
  #
  # The act of conveying information to another person via a communication medium (instrument) such as speech, email, or telephone conversation.
  class CommunicateAction < Base
    include Mixins::CommunicateAction
  end
end
