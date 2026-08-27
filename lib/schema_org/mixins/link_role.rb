# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module LinkRole
      include Role

      def self.schema_property_definitions
        {
          in_language: {
            schema_name: "inLanguage",
            schema_url: "https://schema.org/inLanguage",
            comment_lines: ["The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]]."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "language"
          }.freeze,
          link_relationship: {
            schema_name: "linkRelationship",
            schema_url: "https://schema.org/linkRelationship",
            comment_lines: ["Indicates the relationship type of a Web link."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]].
      # Supersedes `language`.
      def in_language
        read_property(:in_language)
      end

      # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]].
      # Supersedes `language`.
      def in_language=(value)
        write_property(:in_language, value)
      end

      # Indicates the relationship type of a Web link.
      def link_relationship
        read_property(:link_relationship)
      end

      # Indicates the relationship type of a Web link.
      def link_relationship=(value)
        write_property(:link_relationship, value)
      end
    end
  end
end
