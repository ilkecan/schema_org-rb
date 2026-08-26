module SchemaOrg
  module Mixins
    module Article
      include CreativeWork

      def self.schema_property_definitions
        {
          :article_body => {
            schema_name: "articleBody",
            ranges: ["Text"],
          }.freeze,
          :article_section => {
            schema_name: "articleSection",
            ranges: ["Text"],
          }.freeze,
          :page_end => {
            schema_name: "pageEnd",
            ranges: ["Integer", "Text"],
          }.freeze,
          :page_start => {
            schema_name: "pageStart",
            ranges: ["Integer", "Text"],
          }.freeze,
          :pagination => {
            schema_name: "pagination",
            ranges: ["Text"],
          }.freeze,
          :speakable => {
            schema_name: "speakable",
            ranges: ["SpeakableSpecification", "URL"],
          }.freeze,
          :word_count => {
            schema_name: "wordCount",
            ranges: ["Integer"],
          }.freeze,
        }.freeze
      end

      def article_body
        read_property(:article_body)
      end

      def article_body=(value)
        write_property(:article_body, value)
      end

      def article_section
        read_property(:article_section)
      end

      def article_section=(value)
        write_property(:article_section, value)
      end

      def page_end
        read_property(:page_end)
      end

      def page_end=(value)
        write_property(:page_end, value)
      end

      def page_start
        read_property(:page_start)
      end

      def page_start=(value)
        write_property(:page_start, value)
      end

      def pagination
        read_property(:pagination)
      end

      def pagination=(value)
        write_property(:pagination, value)
      end

      def speakable
        read_property(:speakable)
      end

      def speakable=(value)
        write_property(:speakable, value)
      end

      def word_count
        read_property(:word_count)
      end

      def word_count=(value)
        write_property(:word_count, value)
      end

    end
  end
end
