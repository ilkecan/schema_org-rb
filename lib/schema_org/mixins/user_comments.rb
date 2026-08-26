module SchemaOrg
  module Mixins
    module UserComments
      include UserInteraction

      def self.schema_property_definitions
        {
          :comment_text => {
            schema_name: "commentText",
            ranges: ["Text"],
          }.freeze,
          :comment_time => {
            schema_name: "commentTime",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :creator => {
            schema_name: "creator",
            ranges: ["Organization", "Person"],
          }.freeze,
          :discusses => {
            schema_name: "discusses",
            ranges: ["CreativeWork"],
          }.freeze,
          :reply_to_url => {
            schema_name: "replyToUrl",
            ranges: ["URL"],
          }.freeze,
        }.freeze
      end

      def comment_text
        read_property(:comment_text)
      end

      def comment_text=(value)
        write_property(:comment_text, value)
      end

      def comment_time
        read_property(:comment_time)
      end

      def comment_time=(value)
        write_property(:comment_time, value)
      end

      def creator
        read_property(:creator)
      end

      def creator=(value)
        write_property(:creator, value)
      end

      def discusses
        read_property(:discusses)
      end

      def discusses=(value)
        write_property(:discusses, value)
      end

      def reply_to_url
        read_property(:reply_to_url)
      end

      def reply_to_url=(value)
        write_property(:reply_to_url, value)
      end

    end
  end
end
