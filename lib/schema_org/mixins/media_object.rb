# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MediaObject
      include CreativeWork

      def self.schema_property_definitions
        {
          associated_article: {
            schema_name: "associatedArticle",
            schema_url: "https://schema.org/associatedArticle",
            comment_lines: ["A NewsArticle associated with the Media Object."].freeze,
            ranges: ["NewsArticle"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          bitrate: {
            schema_name: "bitrate",
            schema_url: "https://schema.org/bitrate",
            comment_lines: ["The bitrate of the media object."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          content_size: {
            schema_name: "contentSize",
            schema_url: "https://schema.org/contentSize",
            comment_lines: ["File size in (mega/kilo)bytes."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          content_url: {
            schema_name: "contentUrl",
            schema_url: "https://schema.org/contentUrl",
            comment_lines: ["Actual bytes of the media object, for example the image file or video file."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          duration: {
            schema_name: "duration",
            schema_url: "https://schema.org/duration",
            comment_lines: ["The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          embed_url: {
            schema_name: "embedUrl",
            schema_url: "https://schema.org/embedUrl",
            comment_lines: ["A URL pointing to a player for a specific video. In general, this is the information in the ```src``` element of an ```embed``` tag and should not be the same as the content of the ```loc``` tag."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          encodes_creative_work: {
            schema_name: "encodesCreativeWork",
            schema_url: "https://schema.org/encodesCreativeWork",
            comment_lines: ["The CreativeWork encoded by this media object."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: "encoding",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          encoding_format: {
            schema_name: "encodingFormat",
            schema_url: "https://schema.org/encodingFormat",
            comment_lines: ["Media type typically expressed using a MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml) and [MDN reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.", "", "In cases where a [[CreativeWork]] has several media type representations, [[encoding]] can be used to indicate each [[MediaObject]] alongside particular [[encodingFormat]] information.", "", "Unregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["fileFormat"].freeze
          }.freeze,
          end_time: {
            schema_name: "endTime",
            schema_url: "https://schema.org/endTime",
            comment_lines: ["The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          height: {
            schema_name: "height",
            schema_url: "https://schema.org/height",
            comment_lines: ["The height of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ineligible_region: {
            schema_name: "ineligibleRegion",
            schema_url: "https://schema.org/ineligibleRegion",
            comment_lines: ["The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\\n\\nSee also [[eligibleRegion]]."].freeze,
            ranges: ["GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          interpreted_as_claim: {
            schema_name: "interpretedAsClaim",
            schema_url: "https://schema.org/interpretedAsClaim",
            comment_lines: ["Used to indicate a specific claim contained, implied, translated or refined from the content of a [[MediaObject]] or other [[CreativeWork]]. The interpreting party can be indicated using [[claimInterpreter]]."].freeze,
            ranges: ["Claim"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          player_type: {
            schema_name: "playerType",
            schema_url: "https://schema.org/playerType",
            comment_lines: ["Player type required&#x2014;for example, Flash or Silverlight."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          production_company: {
            schema_name: "productionCompany",
            schema_url: "https://schema.org/productionCompany",
            comment_lines: ["The production company or studio responsible for the item, e.g. series, video game, episode etc."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          regions_allowed: {
            schema_name: "regionsAllowed",
            schema_url: "https://schema.org/regionsAllowed",
            comment_lines: ["The regions where the media is allowed. If not specified, then it's assumed to be allowed everywhere. Specify the countries in [ISO 3166 format](http://en.wikipedia.org/wiki/ISO_3166)."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          requires_subscription: {
            schema_name: "requiresSubscription",
            schema_url: "https://schema.org/requiresSubscription",
            comment_lines: ["Indicates if use of the media require a subscription  (either paid or free). Allowed values are ```true``` or ```false``` (note that an earlier version had 'yes', 'no')."].freeze,
            ranges: ["Boolean", "MediaSubscription"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sha256: {
            schema_name: "sha256",
            schema_url: "https://schema.org/sha256",
            comment_lines: ["The [SHA-2](https://en.wikipedia.org/wiki/SHA-2) SHA256 hash of the content of the item. For example, a zero-length input has value 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_time: {
            schema_name: "startTime",
            schema_url: "https://schema.org/startTime",
            comment_lines: ["The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          upload_date: {
            schema_name: "uploadDate",
            schema_url: "https://schema.org/uploadDate",
            comment_lines: ["Date (including time if available) when this media object was uploaded to this site."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          width: {
            schema_name: "width",
            schema_url: "https://schema.org/width",
            comment_lines: ["The width of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A NewsArticle associated with the Media Object.
      def associated_article
        read_property(:associated_article)
      end

      # A NewsArticle associated with the Media Object.
      def associated_article=(value)
        write_property(:associated_article, value)
      end

      # The bitrate of the media object.
      def bitrate
        read_property(:bitrate)
      end

      # The bitrate of the media object.
      def bitrate=(value)
        write_property(:bitrate, value)
      end

      # File size in (mega/kilo)bytes.
      def content_size
        read_property(:content_size)
      end

      # File size in (mega/kilo)bytes.
      def content_size=(value)
        write_property(:content_size, value)
      end

      # Actual bytes of the media object, for example the image file or video file.
      def content_url
        read_property(:content_url)
      end

      # Actual bytes of the media object, for example the image file or video file.
      def content_url=(value)
        write_property(:content_url, value)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration
        read_property(:duration)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration=(value)
        write_property(:duration, value)
      end

      # A URL pointing to a player for a specific video. In general, this is the information in the ```src``` element of an ```embed``` tag and should not be the same as the content of the ```loc``` tag.
      def embed_url
        read_property(:embed_url)
      end

      # A URL pointing to a player for a specific video. In general, this is the information in the ```src``` element of an ```embed``` tag and should not be the same as the content of the ```loc``` tag.
      def embed_url=(value)
        write_property(:embed_url, value)
      end

      # The CreativeWork encoded by this media object.
      # Inverse-property: `encoding`.
      def encodes_creative_work
        read_property(:encodes_creative_work)
      end

      # The CreativeWork encoded by this media object.
      # Inverse-property: `encoding`.
      def encodes_creative_work=(value)
        write_property(:encodes_creative_work, value)
      end

      # Media type typically expressed using a MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml) and [MDN reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.
      #
      # In cases where a [[CreativeWork]] has several media type representations, [[encoding]] can be used to indicate each [[MediaObject]] alongside particular [[encodingFormat]] information.
      #
      # Unregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry.
      # Supersedes `fileFormat`.
      def encoding_format
        read_property(:encoding_format)
      end

      # Media type typically expressed using a MIME format (see [IANA site](http://www.iana.org/assignments/media-types/media-types.xhtml) and [MDN reference](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.
      #
      # In cases where a [[CreativeWork]] has several media type representations, [[encoding]] can be used to indicate each [[MediaObject]] alongside particular [[encodingFormat]] information.
      #
      # Unregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry.
      # Supersedes `fileFormat`.
      def encoding_format=(value)
        write_property(:encoding_format, value)
      end

      # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def end_time
        read_property(:end_time)
      end

      # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def end_time=(value)
        write_property(:end_time, value)
      end

      # The height of the item.
      def height
        read_property(:height)
      end

      # The height of the item.
      def height=(value)
        write_property(:height, value)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also [[eligibleRegion]].
      def ineligible_region
        read_property(:ineligible_region)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also [[eligibleRegion]].
      def ineligible_region=(value)
        write_property(:ineligible_region, value)
      end

      # Used to indicate a specific claim contained, implied, translated or refined from the content of a [[MediaObject]] or other [[CreativeWork]]. The interpreting party can be indicated using [[claimInterpreter]].
      def interpreted_as_claim
        read_property(:interpreted_as_claim)
      end

      # Used to indicate a specific claim contained, implied, translated or refined from the content of a [[MediaObject]] or other [[CreativeWork]]. The interpreting party can be indicated using [[claimInterpreter]].
      def interpreted_as_claim=(value)
        write_property(:interpreted_as_claim, value)
      end

      # Player type required&#x2014;for example, Flash or Silverlight.
      def player_type
        read_property(:player_type)
      end

      # Player type required&#x2014;for example, Flash or Silverlight.
      def player_type=(value)
        write_property(:player_type, value)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company
        read_property(:production_company)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company=(value)
        write_property(:production_company, value)
      end

      # The regions where the media is allowed. If not specified, then it's assumed to be allowed everywhere. Specify the countries in [ISO 3166 format](http://en.wikipedia.org/wiki/ISO_3166).
      def regions_allowed
        read_property(:regions_allowed)
      end

      # The regions where the media is allowed. If not specified, then it's assumed to be allowed everywhere. Specify the countries in [ISO 3166 format](http://en.wikipedia.org/wiki/ISO_3166).
      def regions_allowed=(value)
        write_property(:regions_allowed, value)
      end

      # Indicates if use of the media require a subscription  (either paid or free). Allowed values are ```true``` or ```false``` (note that an earlier version had 'yes', 'no').
      def requires_subscription
        read_property(:requires_subscription)
      end

      # Indicates if use of the media require a subscription  (either paid or free). Allowed values are ```true``` or ```false``` (note that an earlier version had 'yes', 'no').
      def requires_subscription=(value)
        write_property(:requires_subscription, value)
      end

      # The [SHA-2](https://en.wikipedia.org/wiki/SHA-2) SHA256 hash of the content of the item. For example, a zero-length input has value 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'.
      def sha256
        read_property(:sha256)
      end

      # The [SHA-2](https://en.wikipedia.org/wiki/SHA-2) SHA256 hash of the content of the item. For example, a zero-length input has value 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'.
      def sha256=(value)
        write_property(:sha256, value)
      end

      # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def start_time
        read_property(:start_time)
      end

      # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def start_time=(value)
        write_property(:start_time, value)
      end

      # Date (including time if available) when this media object was uploaded to this site.
      def upload_date
        read_property(:upload_date)
      end

      # Date (including time if available) when this media object was uploaded to this site.
      def upload_date=(value)
        write_property(:upload_date, value)
      end

      # The width of the item.
      def width
        read_property(:width)
      end

      # The width of the item.
      def width=(value)
        write_property(:width, value)
      end
    end
  end
end
