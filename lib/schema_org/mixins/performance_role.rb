# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PerformanceRole
      include Role

      def self.schema_property_definitions
        {
          character_name: {
            schema_name: "characterName",
            schema_url: "https://schema.org/characterName",
            comment_lines: ["The name of a character played in some acting or performing role, i.e. in a PerformanceRole."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The name of a character played in some acting or performing role, i.e. in a PerformanceRole.
      def character_name
        read_property(:character_name)
      end

      # The name of a character played in some acting or performing role, i.e. in a PerformanceRole.
      def character_name=(value)
        write_property(:character_name, value)
      end
    end
  end
end
