# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SportsOrganization
      include Organization

      def self.schema_property_definitions
        {
          sport: {
            schema_name: "sport",
            schema_url: "https://schema.org/sport",
            comment_lines: ["A type of sport (e.g. Baseball)."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A type of sport (e.g. Baseball).
      def sport
        read_property(:sport)
      end

      # A type of sport (e.g. Baseball).
      def sport=(value)
        write_property(:sport, value)
      end
    end
  end
end
