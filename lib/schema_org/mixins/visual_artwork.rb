require "active_support/concern"

module SchemaOrg
  module Mixins
    module VisualArtwork
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :art_edition, optional: true # The number of copies when multiple copies of a piece of artwork are produced - e.g. for a limited edition of 20 prints, 'artEdition' refers to the total number of copies (in this example "20").
        option :art_medium, optional: true # The material used. (E.g. Oil, Watercolour, Acrylic, Linoprint, Marble, Cyanotype, Digital, Lithograph, DryPoint, Intaglio, Pastel, Woodcut, Pencil, Mixed Media, etc.)
        option :artform, optional: true # e.g. Painting, Drawing, Sculpture, Print, Photograph, Assemblage, Collage, etc.
        option :depth, optional: true # The depth of the item.
        option :height, optional: true # The height of the item.
        option :surface, optional: true # A material used as a surface in some artwork, e.g. Canvas, Paper, Wood, Board, etc. Superseded by `artwork_surface`.
        option :weight, optional: true # The weight of the product or person.
        option :width, optional: true # The width of the item.
        option :artwork_surface, optional: true # The supporting materials for the artwork, e.g. Canvas, Paper, Wood, Board, etc. Supersedes `surface`.
      end
    end
  end
end
