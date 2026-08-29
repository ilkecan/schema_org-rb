# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module VisualArtwork
      include CreativeWork

      def self.schema_property_definitions
        {
          art_edition: {
            schema_name: "artEdition",
            schema_url: "https://schema.org/artEdition",
            comment_lines: ["The number of copies when multiple copies of a piece of artwork are produced - e.g. for a limited edition of 20 prints, 'artEdition' refers to the total number of copies (in this example \"20\")."].freeze,
            ranges: ["Integer", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          art_medium: {
            schema_name: "artMedium",
            schema_url: "https://schema.org/artMedium",
            comment_lines: ["The material used. (E.g. Oil, Watercolour, Acrylic, Linoprint, Marble, Cyanotype, Digital, Lithograph, DryPoint, Intaglio, Pastel, Woodcut, Pencil, Mixed Media, etc.)"].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          artform: {
            schema_name: "artform",
            schema_url: "https://schema.org/artform",
            comment_lines: ["e.g. Painting, Drawing, Sculpture, Print, Photograph, Assemblage, Collage, etc."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          artist: {
            schema_name: "artist",
            schema_url: "https://schema.org/artist",
            comment_lines: ["The primary artist for a work", "    \tin a medium other than pencils or digital line art--for example, if the", "    \tprimary artwork is done in watercolors or digital paints."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          artwork_surface: {
            schema_name: "artworkSurface",
            schema_url: "https://schema.org/artworkSurface",
            comment_lines: ["The supporting materials for the artwork, e.g. Canvas, Paper, Wood, Board, etc."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["surface"].freeze
          }.freeze,
          colorist: {
            schema_name: "colorist",
            schema_url: "https://schema.org/colorist",
            comment_lines: ["The individual who adds color to inked drawings."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          depth: {
            schema_name: "depth",
            schema_url: "https://schema.org/depth",
            comment_lines: ["The depth of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
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
          inker: {
            schema_name: "inker",
            schema_url: "https://schema.org/inker",
            comment_lines: ["The individual who traces over the pencil drawings in ink after pencils are complete."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          letterer: {
            schema_name: "letterer",
            schema_url: "https://schema.org/letterer",
            comment_lines: ["The individual who adds lettering, including speech balloons and sound effects, to artwork."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          penciler: {
            schema_name: "penciler",
            schema_url: "https://schema.org/penciler",
            comment_lines: ["The individual who draws the primary narrative artwork."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          surface: {
            schema_name: "surface",
            schema_url: "https://schema.org/surface",
            comment_lines: ["A material used as a surface in some artwork, e.g. Canvas, Paper, Wood, Board, etc."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "artworkSurface",
            supersedes: nil
          }.freeze,
          weight: {
            schema_name: "weight",
            schema_url: "https://schema.org/weight",
            comment_lines: ["The weight of the product or person."].freeze,
            ranges: ["Mass", "QuantitativeValue"].freeze,
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

      # The number of copies when multiple copies of a piece of artwork are produced - e.g. for a limited edition of 20 prints, 'artEdition' refers to the total number of copies (in this example "20").
      def art_edition
        read_property(:art_edition)
      end

      # The number of copies when multiple copies of a piece of artwork are produced - e.g. for a limited edition of 20 prints, 'artEdition' refers to the total number of copies (in this example "20").
      def art_edition=(value)
        write_property(:art_edition, value)
      end

      # The material used. (E.g. Oil, Watercolour, Acrylic, Linoprint, Marble, Cyanotype, Digital, Lithograph, DryPoint, Intaglio, Pastel, Woodcut, Pencil, Mixed Media, etc.)
      def art_medium
        read_property(:art_medium)
      end

      # The material used. (E.g. Oil, Watercolour, Acrylic, Linoprint, Marble, Cyanotype, Digital, Lithograph, DryPoint, Intaglio, Pastel, Woodcut, Pencil, Mixed Media, etc.)
      def art_medium=(value)
        write_property(:art_medium, value)
      end

      # e.g. Painting, Drawing, Sculpture, Print, Photograph, Assemblage, Collage, etc.
      def artform
        read_property(:artform)
      end

      # e.g. Painting, Drawing, Sculpture, Print, Photograph, Assemblage, Collage, etc.
      def artform=(value)
        write_property(:artform, value)
      end

      # The primary artist for a work
      #     	in a medium other than pencils or digital line art--for example, if the
      #     	primary artwork is done in watercolors or digital paints.
      def artist
        read_property(:artist)
      end

      # The primary artist for a work
      #     	in a medium other than pencils or digital line art--for example, if the
      #     	primary artwork is done in watercolors or digital paints.
      def artist=(value)
        write_property(:artist, value)
      end

      # The supporting materials for the artwork, e.g. Canvas, Paper, Wood, Board, etc.
      # Supersedes `surface`.
      def artwork_surface
        read_property(:artwork_surface)
      end

      # The supporting materials for the artwork, e.g. Canvas, Paper, Wood, Board, etc.
      # Supersedes `surface`.
      def artwork_surface=(value)
        write_property(:artwork_surface, value)
      end

      # The individual who adds color to inked drawings.
      def colorist
        read_property(:colorist)
      end

      # The individual who adds color to inked drawings.
      def colorist=(value)
        write_property(:colorist, value)
      end

      # The depth of the item.
      def depth
        read_property(:depth)
      end

      # The depth of the item.
      def depth=(value)
        write_property(:depth, value)
      end

      # The height of the item.
      def height
        read_property(:height)
      end

      # The height of the item.
      def height=(value)
        write_property(:height, value)
      end

      # The individual who traces over the pencil drawings in ink after pencils are complete.
      def inker
        read_property(:inker)
      end

      # The individual who traces over the pencil drawings in ink after pencils are complete.
      def inker=(value)
        write_property(:inker, value)
      end

      # The individual who adds lettering, including speech balloons and sound effects, to artwork.
      def letterer
        read_property(:letterer)
      end

      # The individual who adds lettering, including speech balloons and sound effects, to artwork.
      def letterer=(value)
        write_property(:letterer, value)
      end

      # The individual who draws the primary narrative artwork.
      def penciler
        read_property(:penciler)
      end

      # The individual who draws the primary narrative artwork.
      def penciler=(value)
        write_property(:penciler, value)
      end

      # A material used as a surface in some artwork, e.g. Canvas, Paper, Wood, Board, etc.
      # Superseded by `artworkSurface`.
      def surface
        read_property(:surface)
      end

      # A material used as a surface in some artwork, e.g. Canvas, Paper, Wood, Board, etc.
      # Superseded by `artworkSurface`.
      def surface=(value)
        write_property(:surface, value)
      end

      # The weight of the product or person.
      def weight
        read_property(:weight)
      end

      # The weight of the product or person.
      def weight=(value)
        write_property(:weight, value)
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
