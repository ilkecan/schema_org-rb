# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MusicAlbumReleaseType
      include Enumeration

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
