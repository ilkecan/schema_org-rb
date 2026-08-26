# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ComicCoverArt
      include ComicStory
      include CoverArt

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
