# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module UserComments
      include UserInteraction

      def self.schema_property_definitions
        {
          comment_text: {
            schema_name: "commentText",
            schema_url: "https://schema.org/commentText",
            comment_lines: ["The text of the UserComment."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          comment_time: {
            schema_name: "commentTime",
            schema_url: "https://schema.org/commentTime",
            comment_lines: ["The time at which the UserComment was made."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          creator: {
            schema_name: "creator",
            schema_url: "https://schema.org/creator",
            comment_lines: ["The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          discusses: {
            schema_name: "discusses",
            schema_url: "https://schema.org/discusses",
            comment_lines: ["Specifies the CreativeWork associated with the UserComment."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          reply_to_url: {
            schema_name: "replyToUrl",
            schema_url: "https://schema.org/replyToUrl",
            comment_lines: ["The URL at which a reply may be posted to the specified UserComment."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The text of the UserComment.
      def comment_text
        read_property(:comment_text)
      end

      # The text of the UserComment.
      def comment_text=(value)
        write_property(:comment_text, value)
      end

      # The time at which the UserComment was made.
      def comment_time
        read_property(:comment_time)
      end

      # The time at which the UserComment was made.
      def comment_time=(value)
        write_property(:comment_time, value)
      end

      # The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.
      def creator
        read_property(:creator)
      end

      # The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.
      def creator=(value)
        write_property(:creator, value)
      end

      # Specifies the CreativeWork associated with the UserComment.
      def discusses
        read_property(:discusses)
      end

      # Specifies the CreativeWork associated with the UserComment.
      def discusses=(value)
        write_property(:discusses, value)
      end

      # The URL at which a reply may be posted to the specified UserComment.
      def reply_to_url
        read_property(:reply_to_url)
      end

      # The URL at which a reply may be posted to the specified UserComment.
      def reply_to_url=(value)
        write_property(:reply_to_url, value)
      end
    end
  end
end
