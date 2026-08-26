# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module DigitalDocument
      include CreativeWork

      def self.schema_property_definitions
        {
          has_digital_document_permission: {
            schema_name: "hasDigitalDocumentPermission",
            schema_url: "https://schema.org/hasDigitalDocumentPermission",
            comment_lines: ["A permission related to the access to this document (e.g. permission to read or write an electronic document). For a public document, specify a grantee with an Audience with audienceType equal to \"public\"."].freeze,
            ranges: ["DigitalDocumentPermission"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A permission related to the access to this document (e.g. permission to read or write an electronic document). For a public document, specify a grantee with an Audience with audienceType equal to "public".
      def has_digital_document_permission
        read_property(:has_digital_document_permission)
      end

      # A permission related to the access to this document (e.g. permission to read or write an electronic document). For a public document, specify a grantee with an Audience with audienceType equal to "public".
      def has_digital_document_permission=(value)
        write_property(:has_digital_document_permission, value)
      end
    end
  end
end
