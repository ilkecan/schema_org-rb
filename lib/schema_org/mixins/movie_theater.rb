# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MovieTheater
      include CivicStructure
      include EntertainmentBusiness

      def self.schema_property_definitions
        {
          screen_count: {
            schema_name: "screenCount",
            schema_url: "https://schema.org/screenCount",
            comment_lines: ["The number of screens in the movie theater."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The number of screens in the movie theater.
      def screen_count
        read_property(:screen_count)
      end

      # The number of screens in the movie theater.
      def screen_count=(value)
        write_property(:screen_count, value)
      end
    end
  end
end
