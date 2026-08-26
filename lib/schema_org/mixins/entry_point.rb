module SchemaOrg
  module Mixins
    module EntryPoint
      include Intangible

      def self.schema_property_definitions
        {
          :action_application => {
            schema_name: "actionApplication",
            ranges: ["SoftwareApplication"],
          }.freeze,
          :action_platform => {
            schema_name: "actionPlatform",
            ranges: ["DigitalPlatformEnumeration", "Text", "URL"],
          }.freeze,
          :application => {
            schema_name: "application",
            ranges: ["SoftwareApplication"],
          }.freeze,
          :content_type => {
            schema_name: "contentType",
            ranges: ["Text"],
          }.freeze,
          :encoding_type => {
            schema_name: "encodingType",
            ranges: ["Text"],
          }.freeze,
          :http_method => {
            schema_name: "httpMethod",
            ranges: ["Text"],
          }.freeze,
          :url_template => {
            schema_name: "urlTemplate",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def action_application
        read_property(:action_application)
      end

      def action_application=(value)
        write_property(:action_application, value)
      end

      def action_platform
        read_property(:action_platform)
      end

      def action_platform=(value)
        write_property(:action_platform, value)
      end

      def application
        read_property(:application)
      end

      def application=(value)
        write_property(:application, value)
      end

      def content_type
        read_property(:content_type)
      end

      def content_type=(value)
        write_property(:content_type, value)
      end

      def encoding_type
        read_property(:encoding_type)
      end

      def encoding_type=(value)
        write_property(:encoding_type, value)
      end

      def http_method
        read_property(:http_method)
      end

      def http_method=(value)
        write_property(:http_method, value)
      end

      def url_template
        read_property(:url_template)
      end

      def url_template=(value)
        write_property(:url_template, value)
      end

    end
  end
end
