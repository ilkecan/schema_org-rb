# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MobileApplication
      include SoftwareApplication

      def self.schema_property_definitions
        {
          carrier_requirements: {
            schema_name: "carrierRequirements",
            schema_url: "https://schema.org/carrierRequirements",
            comment_lines: ["Specifies specific carrier(s) requirements for the application (e.g. an application may only work on a specific carrier network)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifies specific carrier(s) requirements for the application (e.g. an application may only work on a specific carrier network).
      def carrier_requirements
        read_property(:carrier_requirements)
      end

      # Specifies specific carrier(s) requirements for the application (e.g. an application may only work on a specific carrier network).
      def carrier_requirements=(value)
        write_property(:carrier_requirements, value)
      end
    end
  end
end
