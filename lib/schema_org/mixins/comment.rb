# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Comment
      include CreativeWork

      def self.schema_property_definitions
        {
          downvote_count: {
            schema_name: "downvoteCount",
            schema_url: "https://schema.org/downvoteCount",
            comment_lines: ["The number of downvotes this question, answer or comment has received from the community."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          parent_item: {
            schema_name: "parentItem",
            schema_url: "https://schema.org/parentItem",
            comment_lines: ["The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it."].freeze,
            ranges: ["Comment", "CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          shared_content: {
            schema_name: "sharedContent",
            schema_url: "https://schema.org/sharedContent",
            comment_lines: ["A CreativeWork such as an image, video, or audio clip shared as part of this posting."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          upvote_count: {
            schema_name: "upvoteCount",
            schema_url: "https://schema.org/upvoteCount",
            comment_lines: ["The number of upvotes this question, answer or comment has received from the community."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The number of downvotes this question, answer or comment has received from the community.
      def downvote_count
        read_property(:downvote_count)
      end

      # The number of downvotes this question, answer or comment has received from the community.
      def downvote_count=(value)
        write_property(:downvote_count, value)
      end

      # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
      def parent_item
        read_property(:parent_item)
      end

      # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
      def parent_item=(value)
        write_property(:parent_item, value)
      end

      # A CreativeWork such as an image, video, or audio clip shared as part of this posting.
      def shared_content
        read_property(:shared_content)
      end

      # A CreativeWork such as an image, video, or audio clip shared as part of this posting.
      def shared_content=(value)
        write_property(:shared_content, value)
      end

      # The number of upvotes this question, answer or comment has received from the community.
      def upvote_count
        read_property(:upvote_count)
      end

      # The number of upvotes this question, answer or comment has received from the community.
      def upvote_count=(value)
        write_property(:upvote_count, value)
      end
    end
  end
end
