# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Message
      include CreativeWork

      def self.schema_property_definitions
        {
          bcc_recipient: {
            schema_name: "bccRecipient",
            schema_url: "https://schema.org/bccRecipient",
            comment_lines: ["A sub property of recipient. The recipient blind copied on a message."].freeze,
            ranges: ["ContactPoint", "Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cc_recipient: {
            schema_name: "ccRecipient",
            schema_url: "https://schema.org/ccRecipient",
            comment_lines: ["A sub property of recipient. The recipient copied on a message."].freeze,
            ranges: ["ContactPoint", "Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_read: {
            schema_name: "dateRead",
            schema_url: "https://schema.org/dateRead",
            comment_lines: ["The date/time at which the message has been read by the recipient if a single recipient exists."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_received: {
            schema_name: "dateReceived",
            schema_url: "https://schema.org/dateReceived",
            comment_lines: ["The date/time the message was received if a single recipient exists."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_sent: {
            schema_name: "dateSent",
            schema_url: "https://schema.org/dateSent",
            comment_lines: ["The date/time at which the message was sent."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          message_attachment: {
            schema_name: "messageAttachment",
            schema_url: "https://schema.org/messageAttachment",
            comment_lines: ["A CreativeWork attached to the message."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recipient: {
            schema_name: "recipient",
            schema_url: "https://schema.org/recipient",
            comment_lines: ["A sub property of participant. The participant who is at the receiving end of the action."].freeze,
            ranges: ["Audience", "ContactPoint", "Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sender: {
            schema_name: "sender",
            schema_url: "https://schema.org/sender",
            comment_lines: ["A sub property of participant. The participant who is at the sending end of the action."].freeze,
            ranges: ["Audience", "Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          to_recipient: {
            schema_name: "toRecipient",
            schema_url: "https://schema.org/toRecipient",
            comment_lines: ["A sub property of recipient. The recipient who was directly sent the message."].freeze,
            ranges: ["Audience", "ContactPoint", "Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of recipient. The recipient blind copied on a message.
      def bcc_recipient
        read_property(:bcc_recipient)
      end

      # A sub property of recipient. The recipient blind copied on a message.
      def bcc_recipient=(value)
        write_property(:bcc_recipient, value)
      end

      # A sub property of recipient. The recipient copied on a message.
      def cc_recipient
        read_property(:cc_recipient)
      end

      # A sub property of recipient. The recipient copied on a message.
      def cc_recipient=(value)
        write_property(:cc_recipient, value)
      end

      # The date/time at which the message has been read by the recipient if a single recipient exists.
      def date_read
        read_property(:date_read)
      end

      # The date/time at which the message has been read by the recipient if a single recipient exists.
      def date_read=(value)
        write_property(:date_read, value)
      end

      # The date/time the message was received if a single recipient exists.
      def date_received
        read_property(:date_received)
      end

      # The date/time the message was received if a single recipient exists.
      def date_received=(value)
        write_property(:date_received, value)
      end

      # The date/time at which the message was sent.
      def date_sent
        read_property(:date_sent)
      end

      # The date/time at which the message was sent.
      def date_sent=(value)
        write_property(:date_sent, value)
      end

      # A CreativeWork attached to the message.
      def message_attachment
        read_property(:message_attachment)
      end

      # A CreativeWork attached to the message.
      def message_attachment=(value)
        write_property(:message_attachment, value)
      end

      # A sub property of participant. The participant who is at the receiving end of the action.
      def recipient
        read_property(:recipient)
      end

      # A sub property of participant. The participant who is at the receiving end of the action.
      def recipient=(value)
        write_property(:recipient, value)
      end

      # A sub property of participant. The participant who is at the sending end of the action.
      def sender
        read_property(:sender)
      end

      # A sub property of participant. The participant who is at the sending end of the action.
      def sender=(value)
        write_property(:sender, value)
      end

      # A sub property of recipient. The recipient who was directly sent the message.
      def to_recipient
        read_property(:to_recipient)
      end

      # A sub property of recipient. The recipient who was directly sent the message.
      def to_recipient=(value)
        write_property(:to_recipient, value)
      end
    end
  end
end
