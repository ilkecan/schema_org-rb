module SchemaOrg
  module Mixins
    module Comment
      include CreativeWork

      def self.schema_property_definitions
        {
          :downvote_count => {
            schema_name: "downvoteCount",
            ranges: ["Integer"],
          }.freeze,
          :parent_item => {
            schema_name: "parentItem",
            ranges: ["Comment", "CreativeWork"],
          }.freeze,
          :shared_content => {
            schema_name: "sharedContent",
            ranges: ["CreativeWork"],
          }.freeze,
          :upvote_count => {
            schema_name: "upvoteCount",
            ranges: ["Integer"],
          }.freeze,
        }.freeze
      end

      def downvote_count
        read_property(:downvote_count)
      end

      def downvote_count=(value)
        write_property(:downvote_count, value)
      end

      def parent_item
        read_property(:parent_item)
      end

      def parent_item=(value)
        write_property(:parent_item, value)
      end

      def shared_content
        read_property(:shared_content)
      end

      def shared_content=(value)
        write_property(:shared_content, value)
      end

      def upvote_count
        read_property(:upvote_count)
      end

      def upvote_count=(value)
        write_property(:upvote_count, value)
      end

    end
  end
end
