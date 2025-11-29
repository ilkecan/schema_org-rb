module SchemaOrg
  # https://schema.org/EmailMessage
  #
  # An email message.
  class EmailMessage < Base
    include Mixins::EmailMessage
  end
end
