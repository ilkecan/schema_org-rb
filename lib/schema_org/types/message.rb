module SchemaOrg
  # https://schema.org/Message
  #
  # A single message from a sender to one or more organizations or people.
  class Message < Base
    include Mixins::Message
  end
end
