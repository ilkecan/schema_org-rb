# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PodcastSeason
      include CreativeWorkSeason

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
