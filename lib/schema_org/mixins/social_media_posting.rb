# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module SocialMediaPosting
      include Article

      def self.schema_property_definitions
        {
          shared_content: {
            schema_name: "sharedContent",
            schema_url: "https://schema.org/sharedContent",
            comment_lines: ["A CreativeWork such as an image, video, or audio clip shared as part of this posting."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A CreativeWork such as an image, video, or audio clip shared as part of this posting.
      def shared_content
        read_property(:shared_content)
      end

      # A CreativeWork such as an image, video, or audio clip shared as part of this posting.
      def shared_content=(value)
        write_property(:shared_content, value)
      end
    end
  end
end
