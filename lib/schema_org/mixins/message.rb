require "active_support/concern"

module SchemaOrg
  module Mixins
    module Message
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :bcc_recipient, optional: true # A sub property of recipient. The recipient blind copied on a message.
        option :cc_recipient, optional: true # A sub property of recipient. The recipient copied on a message.
        option :date_read, optional: true # The date/time at which the message has been read by the recipient if a single recipient exists.
        option :date_received, optional: true # The date/time the message was received if a single recipient exists.
        option :date_sent, optional: true # The date/time at which the message was sent.
        option :message_attachment, optional: true # A CreativeWork attached to the message.
        option :sender, optional: true # A sub property of participant. The participant who is at the sending end of the action.
        option :to_recipient, optional: true # A sub property of recipient. The recipient who was directly sent the message.
        option :recipient, optional: true # A sub property of participant. The participant who is at the receiving end of the action.
      end
    end
  end
end
