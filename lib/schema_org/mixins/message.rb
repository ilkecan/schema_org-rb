module SchemaOrg
  module Mixins
    module Message
      include CreativeWork

      def self.schema_property_definitions
        {
          :bcc_recipient => {
            schema_name: "bccRecipient",
            ranges: ["ContactPoint", "Organization", "Person"],
          }.freeze,
          :cc_recipient => {
            schema_name: "ccRecipient",
            ranges: ["ContactPoint", "Organization", "Person"],
          }.freeze,
          :date_read => {
            schema_name: "dateRead",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :date_received => {
            schema_name: "dateReceived",
            ranges: ["DateTime"],
          }.freeze,
          :date_sent => {
            schema_name: "dateSent",
            ranges: ["DateTime"],
          }.freeze,
          :message_attachment => {
            schema_name: "messageAttachment",
            ranges: ["CreativeWork"],
          }.freeze,
          :recipient => {
            schema_name: "recipient",
            ranges: ["Audience", "ContactPoint", "Organization", "Person"],
          }.freeze,
          :sender => {
            schema_name: "sender",
            ranges: ["Audience", "Organization", "Person"],
          }.freeze,
          :to_recipient => {
            schema_name: "toRecipient",
            ranges: ["Audience", "ContactPoint", "Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def bcc_recipient
        read_property(:bcc_recipient)
      end

      def bcc_recipient=(value)
        write_property(:bcc_recipient, value)
      end

      def cc_recipient
        read_property(:cc_recipient)
      end

      def cc_recipient=(value)
        write_property(:cc_recipient, value)
      end

      def date_read
        read_property(:date_read)
      end

      def date_read=(value)
        write_property(:date_read, value)
      end

      def date_received
        read_property(:date_received)
      end

      def date_received=(value)
        write_property(:date_received, value)
      end

      def date_sent
        read_property(:date_sent)
      end

      def date_sent=(value)
        write_property(:date_sent, value)
      end

      def message_attachment
        read_property(:message_attachment)
      end

      def message_attachment=(value)
        write_property(:message_attachment, value)
      end

      def recipient
        read_property(:recipient)
      end

      def recipient=(value)
        write_property(:recipient, value)
      end

      def sender
        read_property(:sender)
      end

      def sender=(value)
        write_property(:sender, value)
      end

      def to_recipient
        read_property(:to_recipient)
      end

      def to_recipient=(value)
        write_property(:to_recipient, value)
      end

    end
  end
end
