module SchemaOrg
  module Mixins
    module WebPageElement
      include CreativeWork

      def self.schema_property_definitions
        {
          :css_selector => {
            schema_name: "cssSelector",
            ranges: ["CssSelectorType"],
          }.freeze,
          :xpath => {
            schema_name: "xpath",
            ranges: ["XPathType"],
          }.freeze,
        }.freeze
      end

      def css_selector
        read_property(:css_selector)
      end

      def css_selector=(value)
        write_property(:css_selector, value)
      end

      def xpath
        read_property(:xpath)
      end

      def xpath=(value)
        write_property(:xpath, value)
      end

    end
  end
end
