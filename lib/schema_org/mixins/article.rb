# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Article
      include CreativeWork

      def self.schema_property_definitions
        {
          article_body: {
            schema_name: "articleBody",
            schema_url: "https://schema.org/articleBody",
            comment_lines: ["The actual body of the article."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          article_section: {
            schema_name: "articleSection",
            schema_url: "https://schema.org/articleSection",
            comment_lines: ["Articles may belong to one or more 'sections' in a magazine or newspaper, such as Sports, Lifestyle, etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          backstory: {
            schema_name: "backstory",
            schema_url: "https://schema.org/backstory",
            comment_lines: ["For an [[Article]], typically a [[NewsArticle]], the backstory property provides a textual summary giving a brief explanation of why and how an article was created. In a journalistic setting this could include information about reporting process, methods, interviews, data sources, etc."].freeze,
            ranges: ["CreativeWork", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          page_end: {
            schema_name: "pageEnd",
            schema_url: "https://schema.org/pageEnd",
            comment_lines: ["The page on which the work ends; for example \"138\" or \"xvi\"."].freeze,
            ranges: ["Integer", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          page_start: {
            schema_name: "pageStart",
            schema_url: "https://schema.org/pageStart",
            comment_lines: ["The page on which the work starts; for example \"135\" or \"xiii\"."].freeze,
            ranges: ["Integer", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pagination: {
            schema_name: "pagination",
            schema_url: "https://schema.org/pagination",
            comment_lines: ["Any description of pages that is not separated into pageStart and pageEnd; for example, \"1-6, 9, 55\" or \"10-12, 46-49\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          speakable: {
            schema_name: "speakable",
            schema_url: "https://schema.org/speakable",
            comment_lines: ["Indicates sections of a Web page that are particularly 'speakable' in the sense of being highlighted as being especially appropriate for text-to-speech conversion. Other sections of a page may also be usefully spoken in particular circumstances; the 'speakable' property serves to indicate the parts most likely to be generally useful for speech.", "", "The *speakable* property can be repeated an arbitrary number of times, with three kinds of possible 'content-locator' values:", "", "1.) *id-value* URL references - uses *id-value* of an element in the page being annotated. The simplest use of *speakable* has (potentially relative) URL values, referencing identified sections of the document concerned.", "", "2.) CSS Selectors - addresses content in the annotated page, e.g. via class attribute. Use the [[cssSelector]] property.", "", "3.)  XPaths - addresses content via XPaths (assuming an XML view of the content). Use the [[xpath]] property.", "", "", "For more sophisticated markup of speakable sections beyond simple ID references, either CSS selectors or XPath expressions to pick out document section(s) as speakable. For this", "we define a supporting type, [[SpeakableSpecification]]  which is defined to be a possible value of the *speakable* property."].freeze,
            ranges: ["SpeakableSpecification", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          word_count: {
            schema_name: "wordCount",
            schema_url: "https://schema.org/wordCount",
            comment_lines: ["The number of words in the text of the CreativeWork such as an Article, Book, etc."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The actual body of the article.
      def article_body
        read_property(:article_body)
      end

      # The actual body of the article.
      def article_body=(value)
        write_property(:article_body, value)
      end

      # Articles may belong to one or more 'sections' in a magazine or newspaper, such as Sports, Lifestyle, etc.
      def article_section
        read_property(:article_section)
      end

      # Articles may belong to one or more 'sections' in a magazine or newspaper, such as Sports, Lifestyle, etc.
      def article_section=(value)
        write_property(:article_section, value)
      end

      # For an [[Article]], typically a [[NewsArticle]], the backstory property provides a textual summary giving a brief explanation of why and how an article was created. In a journalistic setting this could include information about reporting process, methods, interviews, data sources, etc.
      def backstory
        read_property(:backstory)
      end

      # For an [[Article]], typically a [[NewsArticle]], the backstory property provides a textual summary giving a brief explanation of why and how an article was created. In a journalistic setting this could include information about reporting process, methods, interviews, data sources, etc.
      def backstory=(value)
        write_property(:backstory, value)
      end

      # The page on which the work ends; for example "138" or "xvi".
      def page_end
        read_property(:page_end)
      end

      # The page on which the work ends; for example "138" or "xvi".
      def page_end=(value)
        write_property(:page_end, value)
      end

      # The page on which the work starts; for example "135" or "xiii".
      def page_start
        read_property(:page_start)
      end

      # The page on which the work starts; for example "135" or "xiii".
      def page_start=(value)
        write_property(:page_start, value)
      end

      # Any description of pages that is not separated into pageStart and pageEnd; for example, "1-6, 9, 55" or "10-12, 46-49".
      def pagination
        read_property(:pagination)
      end

      # Any description of pages that is not separated into pageStart and pageEnd; for example, "1-6, 9, 55" or "10-12, 46-49".
      def pagination=(value)
        write_property(:pagination, value)
      end

      # Indicates sections of a Web page that are particularly 'speakable' in the sense of being highlighted as being especially appropriate for text-to-speech conversion. Other sections of a page may also be usefully spoken in particular circumstances; the 'speakable' property serves to indicate the parts most likely to be generally useful for speech.
      #
      # The *speakable* property can be repeated an arbitrary number of times, with three kinds of possible 'content-locator' values:
      #
      # 1.) *id-value* URL references - uses *id-value* of an element in the page being annotated. The simplest use of *speakable* has (potentially relative) URL values, referencing identified sections of the document concerned.
      #
      # 2.) CSS Selectors - addresses content in the annotated page, e.g. via class attribute. Use the [[cssSelector]] property.
      #
      # 3.)  XPaths - addresses content via XPaths (assuming an XML view of the content). Use the [[xpath]] property.
      #
      #
      # For more sophisticated markup of speakable sections beyond simple ID references, either CSS selectors or XPath expressions to pick out document section(s) as speakable. For this
      # we define a supporting type, [[SpeakableSpecification]]  which is defined to be a possible value of the *speakable* property.
      def speakable
        read_property(:speakable)
      end

      # Indicates sections of a Web page that are particularly 'speakable' in the sense of being highlighted as being especially appropriate for text-to-speech conversion. Other sections of a page may also be usefully spoken in particular circumstances; the 'speakable' property serves to indicate the parts most likely to be generally useful for speech.
      #
      # The *speakable* property can be repeated an arbitrary number of times, with three kinds of possible 'content-locator' values:
      #
      # 1.) *id-value* URL references - uses *id-value* of an element in the page being annotated. The simplest use of *speakable* has (potentially relative) URL values, referencing identified sections of the document concerned.
      #
      # 2.) CSS Selectors - addresses content in the annotated page, e.g. via class attribute. Use the [[cssSelector]] property.
      #
      # 3.)  XPaths - addresses content via XPaths (assuming an XML view of the content). Use the [[xpath]] property.
      #
      #
      # For more sophisticated markup of speakable sections beyond simple ID references, either CSS selectors or XPath expressions to pick out document section(s) as speakable. For this
      # we define a supporting type, [[SpeakableSpecification]]  which is defined to be a possible value of the *speakable* property.
      def speakable=(value)
        write_property(:speakable, value)
      end

      # The number of words in the text of the CreativeWork such as an Article, Book, etc.
      def word_count
        read_property(:word_count)
      end

      # The number of words in the text of the CreativeWork such as an Article, Book, etc.
      def word_count=(value)
        write_property(:word_count, value)
      end
    end
  end
end
