# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Blog
      include CreativeWork

      def self.schema_property_definitions
        {
          blog_post: {
            schema_name: "blogPost",
            schema_url: "https://schema.org/blogPost",
            comment_lines: ["A posting that is part of this blog."].freeze,
            ranges: ["BlogPosting"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["blogPosts"].freeze
          }.freeze,
          blog_posts: {
            schema_name: "blogPosts",
            schema_url: "https://schema.org/blogPosts",
            comment_lines: ["Indicates a post that is part of a [[Blog]]. Note that historically, what we term a \"Blog\" was once known as a \"weblog\", and that what we term a \"BlogPosting\" is now often colloquially referred to as a \"blog\"."].freeze,
            ranges: ["BlogPosting"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "blogPost",
            supersedes: nil
          }.freeze,
          issn: {
            schema_name: "issn",
            schema_url: "https://schema.org/issn",
            comment_lines: ["The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A posting that is part of this blog.
      # Supersedes `blogPosts`.
      def blog_post
        read_property(:blog_post)
      end

      # A posting that is part of this blog.
      # Supersedes `blogPosts`.
      def blog_post=(value)
        write_property(:blog_post, value)
      end

      # Indicates a post that is part of a [[Blog]]. Note that historically, what we term a "Blog" was once known as a "weblog", and that what we term a "BlogPosting" is now often colloquially referred to as a "blog".
      # Superseded by `blogPost`.
      def blog_posts
        read_property(:blog_posts)
      end

      # Indicates a post that is part of a [[Blog]]. Note that historically, what we term a "Blog" was once known as a "weblog", and that what we term a "BlogPosting" is now often colloquially referred to as a "blog".
      # Superseded by `blogPost`.
      def blog_posts=(value)
        write_property(:blog_posts, value)
      end

      # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
      def issn
        read_property(:issn)
      end

      # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
      def issn=(value)
        write_property(:issn, value)
      end
    end
  end
end
