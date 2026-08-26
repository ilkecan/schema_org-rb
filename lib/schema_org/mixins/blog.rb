module SchemaOrg
  module Mixins
    module Blog
      include CreativeWork

      def self.schema_property_definitions
        {
          :blog_post => {
            schema_name: "blogPost",
            ranges: ["BlogPosting"],
          }.freeze,
          :blog_posts => {
            schema_name: "blogPosts",
            ranges: ["BlogPosting"],
          }.freeze,
          :issn => {
            schema_name: "issn",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def blog_post
        read_property(:blog_post)
      end

      def blog_post=(value)
        write_property(:blog_post, value)
      end

      def blog_posts
        read_property(:blog_posts)
      end

      def blog_posts=(value)
        write_property(:blog_posts, value)
      end

      def issn
        read_property(:issn)
      end

      def issn=(value)
        write_property(:issn, value)
      end

    end
  end
end
