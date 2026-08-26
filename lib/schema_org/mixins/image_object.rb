module SchemaOrg
  module Mixins
    module ImageObject
      include MediaObject

      def self.schema_property_definitions
        {
          :caption => {
            schema_name: "caption",
            ranges: ["MediaObject", "Text"],
          }.freeze,
          :exif_data => {
            schema_name: "exifData",
            ranges: ["PropertyValue", "Text"],
          }.freeze,
          :representative_of_page => {
            schema_name: "representativeOfPage",
            ranges: ["Boolean"],
          }.freeze,
        }.freeze
      end

      def caption
        read_property(:caption)
      end

      def caption=(value)
        write_property(:caption, value)
      end

      def exif_data
        read_property(:exif_data)
      end

      def exif_data=(value)
        write_property(:exif_data, value)
      end

      def representative_of_page
        read_property(:representative_of_page)
      end

      def representative_of_page=(value)
        write_property(:representative_of_page, value)
      end

    end
  end
end
