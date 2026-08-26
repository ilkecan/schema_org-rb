module SchemaOrg
  module Mixins
    module VisualArtwork
      include CreativeWork

      def self.schema_property_definitions
        {
          :art_edition => {
            schema_name: "artEdition",
            ranges: ["Integer", "Text"],
          }.freeze,
          :art_medium => {
            schema_name: "artMedium",
            ranges: ["Text", "URL"],
          }.freeze,
          :artform => {
            schema_name: "artform",
            ranges: ["Text", "URL"],
          }.freeze,
          :artwork_surface => {
            schema_name: "artworkSurface",
            ranges: ["Text", "URL"],
          }.freeze,
          :depth => {
            schema_name: "depth",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
          :height => {
            schema_name: "height",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
          :surface => {
            schema_name: "surface",
            ranges: ["Text", "URL"],
          }.freeze,
          :weight => {
            schema_name: "weight",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :width => {
            schema_name: "width",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def art_edition
        read_property(:art_edition)
      end

      def art_edition=(value)
        write_property(:art_edition, value)
      end

      def art_medium
        read_property(:art_medium)
      end

      def art_medium=(value)
        write_property(:art_medium, value)
      end

      def artform
        read_property(:artform)
      end

      def artform=(value)
        write_property(:artform, value)
      end

      def artwork_surface
        read_property(:artwork_surface)
      end

      def artwork_surface=(value)
        write_property(:artwork_surface, value)
      end

      def depth
        read_property(:depth)
      end

      def depth=(value)
        write_property(:depth, value)
      end

      def height
        read_property(:height)
      end

      def height=(value)
        write_property(:height, value)
      end

      def surface
        read_property(:surface)
      end

      def surface=(value)
        write_property(:surface, value)
      end

      def weight
        read_property(:weight)
      end

      def weight=(value)
        write_property(:weight, value)
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
