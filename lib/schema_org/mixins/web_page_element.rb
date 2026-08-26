# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module WebPageElement
      include CreativeWork

      def self.schema_property_definitions
        {
          css_selector: {
            schema_name: "cssSelector",
            schema_url: "https://schema.org/cssSelector",
            comment_lines: ["A CSS selector, e.g. of a [[SpeakableSpecification]] or [[WebPageElement]]. In the latter case, multiple matches within a page can constitute a single conceptual \"Web page element\"."].freeze,
            ranges: ["CssSelectorType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          xpath: {
            schema_name: "xpath",
            schema_url: "https://schema.org/xpath",
            comment_lines: ["An XPath, e.g. of a [[SpeakableSpecification]] or [[WebPageElement]]. In the latter case, multiple matches within a page can constitute a single conceptual \"Web page element\"."].freeze,
            ranges: ["XPathType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A CSS selector, e.g. of a [[SpeakableSpecification]] or [[WebPageElement]]. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".
      def css_selector
        read_property(:css_selector)
      end

      # A CSS selector, e.g. of a [[SpeakableSpecification]] or [[WebPageElement]]. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".
      def css_selector=(value)
        write_property(:css_selector, value)
      end

      # An XPath, e.g. of a [[SpeakableSpecification]] or [[WebPageElement]]. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".
      def xpath
        read_property(:xpath)
      end

      # An XPath, e.g. of a [[SpeakableSpecification]] or [[WebPageElement]]. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".
      def xpath=(value)
        write_property(:xpath, value)
      end
    end
  end
end
