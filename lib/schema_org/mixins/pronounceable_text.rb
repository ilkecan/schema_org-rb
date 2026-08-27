# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module PronounceableText
      include Text

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
          phonetic_text: {
            schema_name: "phoneticText",
            schema_url: "https://schema.org/phoneticText",
            comment_lines: ["Representation of a text [[textValue]] using the specified [[speechToTextMarkup]]. For example the city name of Houston in IPA: /ˈhjuːstən/."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          speech_to_text_markup: {
            schema_name: "speechToTextMarkup",
            schema_url: "https://schema.org/speechToTextMarkup",
            comment_lines: ["Form of markup used. eg. [SSML](https://www.w3.org/TR/speech-synthesis11) or [IPA](https://www.wikidata.org/wiki/Property:P898)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          text_value: {
            schema_name: "textValue",
            schema_url: "https://schema.org/textValue",
            comment_lines: ["Text value being annotated."].freeze,
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

      # Representation of a text [[textValue]] using the specified [[speechToTextMarkup]]. For example the city name of Houston in IPA: /ˈhjuːstən/.
      def phonetic_text
        read_property(:phonetic_text)
      end

      # Representation of a text [[textValue]] using the specified [[speechToTextMarkup]]. For example the city name of Houston in IPA: /ˈhjuːstən/.
      def phonetic_text=(value)
        write_property(:phonetic_text, value)
      end

      # Form of markup used. eg. [SSML](https://www.w3.org/TR/speech-synthesis11) or [IPA](https://www.wikidata.org/wiki/Property:P898).
      def speech_to_text_markup
        read_property(:speech_to_text_markup)
      end

      # Form of markup used. eg. [SSML](https://www.w3.org/TR/speech-synthesis11) or [IPA](https://www.wikidata.org/wiki/Property:P898).
      def speech_to_text_markup=(value)
        write_property(:speech_to_text_markup, value)
      end

      # Text value being annotated.
      def text_value
        read_property(:text_value)
      end

      # Text value being annotated.
      def text_value=(value)
        write_property(:text_value, value)
      end
    end
  end
end
