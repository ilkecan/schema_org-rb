# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module EntryPoint
      include Intangible

      def self.schema_property_definitions
        {
          action_application: {
            schema_name: "actionApplication",
            schema_url: "https://schema.org/actionApplication",
            comment_lines: ["An application that can complete the request."].freeze,
            ranges: ["SoftwareApplication"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "application"
          }.freeze,
          action_platform: {
            schema_name: "actionPlatform",
            schema_url: "https://schema.org/actionPlatform",
            comment_lines: ["The high level platform(s) where the Action can be performed for the given URL. To specify a specific application or operating system instance, use actionApplication."].freeze,
            ranges: ["DigitalPlatformEnumeration", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          application: {
            schema_name: "application",
            schema_url: "https://schema.org/application",
            comment_lines: ["An application that can complete the request."].freeze,
            ranges: ["SoftwareApplication"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "actionApplication",
            supersedes: nil
          }.freeze,
          content_type: {
            schema_name: "contentType",
            schema_url: "https://schema.org/contentType",
            comment_lines: ["The supported content type(s) for an EntryPoint response."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          encoding_type: {
            schema_name: "encodingType",
            schema_url: "https://schema.org/encodingType",
            comment_lines: ["The supported encoding type(s) for an EntryPoint request."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          http_method: {
            schema_name: "httpMethod",
            schema_url: "https://schema.org/httpMethod",
            comment_lines: ["An HTTP method that specifies the appropriate HTTP method for a request to an HTTP EntryPoint. Values are capitalized strings as used in HTTP."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          url_template: {
            schema_name: "urlTemplate",
            schema_url: "https://schema.org/urlTemplate",
            comment_lines: ["An url template (RFC6570) that will be used to construct the target of the execution of the action."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An application that can complete the request.
      # Supersedes `application`.
      def action_application
        read_property(:action_application)
      end

      # An application that can complete the request.
      # Supersedes `application`.
      def action_application=(value)
        write_property(:action_application, value)
      end

      # The high level platform(s) where the Action can be performed for the given URL. To specify a specific application or operating system instance, use actionApplication.
      def action_platform
        read_property(:action_platform)
      end

      # The high level platform(s) where the Action can be performed for the given URL. To specify a specific application or operating system instance, use actionApplication.
      def action_platform=(value)
        write_property(:action_platform, value)
      end

      # An application that can complete the request.
      # Superseded by `actionApplication`.
      def application
        read_property(:application)
      end

      # An application that can complete the request.
      # Superseded by `actionApplication`.
      def application=(value)
        write_property(:application, value)
      end

      # The supported content type(s) for an EntryPoint response.
      def content_type
        read_property(:content_type)
      end

      # The supported content type(s) for an EntryPoint response.
      def content_type=(value)
        write_property(:content_type, value)
      end

      # The supported encoding type(s) for an EntryPoint request.
      def encoding_type
        read_property(:encoding_type)
      end

      # The supported encoding type(s) for an EntryPoint request.
      def encoding_type=(value)
        write_property(:encoding_type, value)
      end

      # An HTTP method that specifies the appropriate HTTP method for a request to an HTTP EntryPoint. Values are capitalized strings as used in HTTP.
      def http_method
        read_property(:http_method)
      end

      # An HTTP method that specifies the appropriate HTTP method for a request to an HTTP EntryPoint. Values are capitalized strings as used in HTTP.
      def http_method=(value)
        write_property(:http_method, value)
      end

      # An url template (RFC6570) that will be used to construct the target of the execution of the action.
      def url_template
        read_property(:url_template)
      end

      # An url template (RFC6570) that will be used to construct the target of the execution of the action.
      def url_template=(value)
        write_property(:url_template, value)
      end
    end
  end
end
