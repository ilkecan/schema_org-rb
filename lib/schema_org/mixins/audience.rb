# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Audience
      include Intangible

      def self.schema_property_definitions
        {
          audience_type: {
            schema_name: "audienceType",
            schema_url: "https://schema.org/audienceType",
            comment_lines: ["The target group associated with a given audience (e.g. veterans, car owners, musicians, etc.)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geographic_area: {
            schema_name: "geographicArea",
            schema_url: "https://schema.org/geographicArea",
            comment_lines: ["The geographic area associated with the audience."].freeze,
            ranges: ["AdministrativeArea"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The target group associated with a given audience (e.g. veterans, car owners, musicians, etc.).
      def audience_type
        read_property(:audience_type)
      end

      # The target group associated with a given audience (e.g. veterans, car owners, musicians, etc.).
      def audience_type=(value)
        write_property(:audience_type, value)
      end

      # The geographic area associated with the audience.
      def geographic_area
        read_property(:geographic_area)
      end

      # The geographic area associated with the audience.
      def geographic_area=(value)
        write_property(:geographic_area, value)
      end
    end
  end
end
