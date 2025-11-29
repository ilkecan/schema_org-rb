require "active_support/concern"

module SchemaOrg
  module Mixins
    module Message
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :bcc_recipient # A sub property of recipient. The recipient blind copied on a message.
        option :cc_recipient # A sub property of recipient. The recipient copied on a message.
        option :date_read # The date/time at which the message has been read by the recipient if a single recipient exists.
        option :date_received # The date/time the message was received if a single recipient exists.
        option :date_sent # The date/time at which the message was sent.
        option :message_attachment # A CreativeWork attached to the message.
        option :sender # A sub property of participant. The participant who is at the sending end of the action.
        option :to_recipient # A sub property of recipient. The recipient who was directly sent the message.
        option :recipient # A sub property of participant. The participant who is at the receiving end of the action.
      end
    end
  end
end
