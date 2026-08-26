module SchemaOrg
  module Mixins
    module MediaObject
      include CreativeWork

      def self.schema_property_definitions
        {
          :associated_article => {
            schema_name: "associatedArticle",
            ranges: ["NewsArticle"],
          }.freeze,
          :bitrate => {
            schema_name: "bitrate",
            ranges: ["Text"],
          }.freeze,
          :content_size => {
            schema_name: "contentSize",
            ranges: ["Text"],
          }.freeze,
          :content_url => {
            schema_name: "contentUrl",
            ranges: ["URL"],
          }.freeze,
          :duration => {
            schema_name: "duration",
            ranges: ["Duration"],
          }.freeze,
          :embed_url => {
            schema_name: "embedUrl",
            ranges: ["URL"],
          }.freeze,
          :encodes_creative_work => {
            schema_name: "encodesCreativeWork",
            ranges: ["CreativeWork"],
          }.freeze,
          :encoding_format => {
            schema_name: "encodingFormat",
            ranges: ["Text", "URL"],
          }.freeze,
          :end_time => {
            schema_name: "endTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :height => {
            schema_name: "height",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
          :ineligible_region => {
            schema_name: "ineligibleRegion",
            ranges: ["GeoShape", "Place", "Text"],
          }.freeze,
          :player_type => {
            schema_name: "playerType",
            ranges: ["Text"],
          }.freeze,
          :production_company => {
            schema_name: "productionCompany",
            ranges: ["Organization"],
          }.freeze,
          :regions_allowed => {
            schema_name: "regionsAllowed",
            ranges: ["Place"],
          }.freeze,
          :requires_subscription => {
            schema_name: "requiresSubscription",
            ranges: ["Boolean", "MediaSubscription"],
          }.freeze,
          :start_time => {
            schema_name: "startTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :upload_date => {
            schema_name: "uploadDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :width => {
            schema_name: "width",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def associated_article
        read_property(:associated_article)
      end

      def associated_article=(value)
        write_property(:associated_article, value)
      end

      def bitrate
        read_property(:bitrate)
      end

      def bitrate=(value)
        write_property(:bitrate, value)
      end

      def content_size
        read_property(:content_size)
      end

      def content_size=(value)
        write_property(:content_size, value)
      end

      def content_url
        read_property(:content_url)
      end

      def content_url=(value)
        write_property(:content_url, value)
      end

      def duration
        read_property(:duration)
      end

      def duration=(value)
        write_property(:duration, value)
      end

      def embed_url
        read_property(:embed_url)
      end

      def embed_url=(value)
        write_property(:embed_url, value)
      end

      def encodes_creative_work
        read_property(:encodes_creative_work)
      end

      def encodes_creative_work=(value)
        write_property(:encodes_creative_work, value)
      end

      def encoding_format
        read_property(:encoding_format)
      end

      def encoding_format=(value)
        write_property(:encoding_format, value)
      end

      def end_time
        read_property(:end_time)
      end

      def end_time=(value)
        write_property(:end_time, value)
      end

      def height
        read_property(:height)
      end

      def height=(value)
        write_property(:height, value)
      end

      def ineligible_region
        read_property(:ineligible_region)
      end

      def ineligible_region=(value)
        write_property(:ineligible_region, value)
      end

      def player_type
        read_property(:player_type)
      end

      def player_type=(value)
        write_property(:player_type, value)
      end

      def production_company
        read_property(:production_company)
      end

      def production_company=(value)
        write_property(:production_company, value)
      end

      def regions_allowed
        read_property(:regions_allowed)
      end

      def regions_allowed=(value)
        write_property(:regions_allowed, value)
      end

      def requires_subscription
        read_property(:requires_subscription)
      end

      def requires_subscription=(value)
        write_property(:requires_subscription, value)
      end

      def start_time
        read_property(:start_time)
      end

      def start_time=(value)
        write_property(:start_time, value)
      end

      def upload_date
        read_property(:upload_date)
      end

      def upload_date=(value)
        write_property(:upload_date, value)
      end

      def width
        read_property(:width)
      end

      def width=(value)
        write_property(:width, value)
      end

    end
  end
end
