# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module TVEpisode
      include Episode

      def self.schema_property_definitions
        {
          country_of_origin: {
            schema_name: "countryOfOrigin",
            schema_url: "https://schema.org/countryOfOrigin",
            comment_lines: ["The country of origin of something, including products as well as creative  works such as movie and TV content.", "", "In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.", "", "In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here."].freeze,
            ranges: ["Country"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          part_of_tv_series: {
            schema_name: "partOfTVSeries",
            schema_url: "https://schema.org/partOfTVSeries",
            comment_lines: ["The TV series to which this episode or season belongs."].freeze,
            ranges: ["TVSeries"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "partOfSeries",
            supersedes: nil
          }.freeze,
          subtitle_language: {
            schema_name: "subtitleLanguage",
            schema_url: "https://schema.org/subtitleLanguage",
            comment_lines: ["Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47)."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          title_eidr: {
            schema_name: "titleEIDR",
            schema_url: "https://schema.org/titleEIDR",
            comment_lines: ["An [EIDR](https://eidr.org/) (Entertainment Identifier Registry) [[identifier]] representing at the most general/abstract level, a work of film or television.", "", "For example, the motion picture known as \"Ghostbusters\" has a titleEIDR of  \"10.5240/7EC7-228A-510A-053E-CBB8-J\". This title (or work) may have several variants, which EIDR calls \"edits\". See [[editEIDR]].", "", "Since schema.org types like [[Movie]], [[TVEpisode]], [[TVSeason]], and [[TVSeries]] can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The country of origin of something, including products as well as creative  works such as movie and TV content.
      #
      # In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.
      #
      # In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
      def country_of_origin
        read_property(:country_of_origin)
      end

      # The country of origin of something, including products as well as creative  works such as movie and TV content.
      #
      # In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.
      #
      # In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
      def country_of_origin=(value)
        write_property(:country_of_origin, value)
      end

      # The TV series to which this episode or season belongs.
      # Superseded by `partOfSeries`.
      def part_of_tv_series
        read_property(:part_of_tv_series)
      end

      # The TV series to which this episode or season belongs.
      # Superseded by `partOfSeries`.
      def part_of_tv_series=(value)
        write_property(:part_of_tv_series, value)
      end

      # Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47).
      def subtitle_language
        read_property(:subtitle_language)
      end

      # Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47).
      def subtitle_language=(value)
        write_property(:subtitle_language, value)
      end

      # An [EIDR](https://eidr.org/) (Entertainment Identifier Registry) [[identifier]] representing at the most general/abstract level, a work of film or television.
      #
      # For example, the motion picture known as "Ghostbusters" has a titleEIDR of  "10.5240/7EC7-228A-510A-053E-CBB8-J". This title (or work) may have several variants, which EIDR calls "edits". See [[editEIDR]].
      #
      # Since schema.org types like [[Movie]], [[TVEpisode]], [[TVSeason]], and [[TVSeries]] can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description.
      def title_eidr
        read_property(:title_eidr)
      end

      # An [EIDR](https://eidr.org/) (Entertainment Identifier Registry) [[identifier]] representing at the most general/abstract level, a work of film or television.
      #
      # For example, the motion picture known as "Ghostbusters" has a titleEIDR of  "10.5240/7EC7-228A-510A-053E-CBB8-J". This title (or work) may have several variants, which EIDR calls "edits". See [[editEIDR]].
      #
      # Since schema.org types like [[Movie]], [[TVEpisode]], [[TVSeason]], and [[TVSeries]] can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description.
      def title_eidr=(value)
        write_property(:title_eidr, value)
      end
    end
  end
end
