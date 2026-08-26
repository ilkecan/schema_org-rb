# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PerformAction
      include PlayAction

      def self.schema_property_definitions
        {
          entertainment_business: {
            schema_name: "entertainmentBusiness",
            schema_url: "https://schema.org/entertainmentBusiness",
            comment_lines: ["A sub property of location. The entertainment business where the action occurred."].freeze,
            ranges: ["EntertainmentBusiness"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of location. The entertainment business where the action occurred.
      def entertainment_business
        read_property(:entertainment_business)
      end

      # A sub property of location. The entertainment business where the action occurred.
      def entertainment_business=(value)
        write_property(:entertainment_business, value)
      end
    end
  end
end
