# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SequentialArt
      include Book
      include VisualArtwork

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
