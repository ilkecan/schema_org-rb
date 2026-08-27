# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module WebPage
      include CreativeWork

      def self.schema_property_definitions
        {
          breadcrumb: {
            schema_name: "breadcrumb",
            schema_url: "https://schema.org/breadcrumb",
            comment_lines: ["A set of links that can help a user understand and navigate a website hierarchy."].freeze,
            ranges: ["BreadcrumbList", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          last_reviewed: {
            schema_name: "lastReviewed",
            schema_url: "https://schema.org/lastReviewed",
            comment_lines: ["Date on which the content on this web page was last reviewed for accuracy and/or completeness."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          main_content_of_page: {
            schema_name: "mainContentOfPage",
            schema_url: "https://schema.org/mainContentOfPage",
            comment_lines: ["Indicates if this web page element is the main subject of the page."].freeze,
            ranges: ["WebPageElement"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "aspect"
          }.freeze,
          primary_image_of_page: {
            schema_name: "primaryImageOfPage",
            schema_url: "https://schema.org/primaryImageOfPage",
            comment_lines: ["Indicates the main image on the page."].freeze,
            ranges: ["ImageObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          related_link: {
            schema_name: "relatedLink",
            schema_url: "https://schema.org/relatedLink",
            comment_lines: ["A link related to this web page, for example to other related web pages."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          reviewed_by: {
            schema_name: "reviewedBy",
            schema_url: "https://schema.org/reviewedBy",
            comment_lines: ["People or organizations that have reviewed the content on this web page for accuracy and/or completeness."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          significant_link: {
            schema_name: "significantLink",
            schema_url: "https://schema.org/significantLink",
            comment_lines: ["One of the more significant URLs on the page. Typically, these are the non-navigation links that are clicked on the most."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "significantLinks"
          }.freeze,
          significant_links: {
            schema_name: "significantLinks",
            schema_url: "https://schema.org/significantLinks",
            comment_lines: ["The most significant URLs on the page. Typically, these are the non-navigation links that are clicked on the most."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "significantLink",
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
          specialty: {
            schema_name: "specialty",
            schema_url: "https://schema.org/specialty",
            comment_lines: ["One of the domain specialities to which this web page's content applies."].freeze,
            ranges: ["Specialty"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A set of links that can help a user understand and navigate a website hierarchy.
      def breadcrumb
        read_property(:breadcrumb)
      end

      # A set of links that can help a user understand and navigate a website hierarchy.
      def breadcrumb=(value)
        write_property(:breadcrumb, value)
      end

      # Date on which the content on this web page was last reviewed for accuracy and/or completeness.
      def last_reviewed
        read_property(:last_reviewed)
      end

      # Date on which the content on this web page was last reviewed for accuracy and/or completeness.
      def last_reviewed=(value)
        write_property(:last_reviewed, value)
      end

      # Indicates if this web page element is the main subject of the page.
      # Supersedes `aspect`.
      def main_content_of_page
        read_property(:main_content_of_page)
      end

      # Indicates if this web page element is the main subject of the page.
      # Supersedes `aspect`.
      def main_content_of_page=(value)
        write_property(:main_content_of_page, value)
      end

      # Indicates the main image on the page.
      def primary_image_of_page
        read_property(:primary_image_of_page)
      end

      # Indicates the main image on the page.
      def primary_image_of_page=(value)
        write_property(:primary_image_of_page, value)
      end

      # A link related to this web page, for example to other related web pages.
      def related_link
        read_property(:related_link)
      end

      # A link related to this web page, for example to other related web pages.
      def related_link=(value)
        write_property(:related_link, value)
      end

      # People or organizations that have reviewed the content on this web page for accuracy and/or completeness.
      def reviewed_by
        read_property(:reviewed_by)
      end

      # People or organizations that have reviewed the content on this web page for accuracy and/or completeness.
      def reviewed_by=(value)
        write_property(:reviewed_by, value)
      end

      # One of the more significant URLs on the page. Typically, these are the non-navigation links that are clicked on the most.
      # Supersedes `significantLinks`.
      def significant_link
        read_property(:significant_link)
      end

      # One of the more significant URLs on the page. Typically, these are the non-navigation links that are clicked on the most.
      # Supersedes `significantLinks`.
      def significant_link=(value)
        write_property(:significant_link, value)
      end

      # The most significant URLs on the page. Typically, these are the non-navigation links that are clicked on the most.
      # Superseded by `significantLink`.
      def significant_links
        read_property(:significant_links)
      end

      # The most significant URLs on the page. Typically, these are the non-navigation links that are clicked on the most.
      # Superseded by `significantLink`.
      def significant_links=(value)
        write_property(:significant_links, value)
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

      # One of the domain specialities to which this web page's content applies.
      def specialty
        read_property(:specialty)
      end

      # One of the domain specialities to which this web page's content applies.
      def specialty=(value)
        write_property(:specialty, value)
      end
    end
  end
end
