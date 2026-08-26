# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module DigitalDocumentPermission
      include Intangible

      def self.schema_property_definitions
        {
          grantee: {
            schema_name: "grantee",
            schema_url: "https://schema.org/grantee",
            comment_lines: ["The person, organization, contact point, or audience that has been granted this permission."].freeze,
            ranges: ["Audience", "ContactPoint", "Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          permission_type: {
            schema_name: "permissionType",
            schema_url: "https://schema.org/permissionType",
            comment_lines: ["The type of permission granted the person, organization, or audience."].freeze,
            ranges: ["DigitalDocumentPermissionType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The person, organization, contact point, or audience that has been granted this permission.
      def grantee
        read_property(:grantee)
      end

      # The person, organization, contact point, or audience that has been granted this permission.
      def grantee=(value)
        write_property(:grantee, value)
      end

      # The type of permission granted the person, organization, or audience.
      def permission_type
        read_property(:permission_type)
      end

      # The type of permission granted the person, organization, or audience.
      def permission_type=(value)
        write_property(:permission_type, value)
      end
    end
  end
end
