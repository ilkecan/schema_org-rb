# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module WriteAction
      include CreateAction

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
            supersedes: ["language"].freeze
          }.freeze,
          language: {
            schema_name: "language",
            schema_url: "https://schema.org/language",
            comment_lines: ["A sub property of instrument. The language used on this action."].freeze,
            ranges: ["Language"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "inLanguage",
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

      # A sub property of instrument. The language used on this action.
      # Superseded by `inLanguage`.
      def language
        read_property(:language)
      end

      # A sub property of instrument. The language used on this action.
      # Superseded by `inLanguage`.
      def language=(value)
        write_property(:language, value)
      end
    end
  end
end
