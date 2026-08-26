# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module GovernmentService
      include Service

      def self.schema_property_definitions
        {
          jurisdiction: {
            schema_name: "jurisdiction",
            schema_url: "https://schema.org/jurisdiction",
            comment_lines: ["Indicates a legal jurisdiction, e.g. of some legislation, or where some government service is based."].freeze,
            ranges: ["AdministrativeArea", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          service_operator: {
            schema_name: "serviceOperator",
            schema_url: "https://schema.org/serviceOperator",
            comment_lines: ["The operating organization, if different from the provider.  This enables the representation of services that are provided by an organization, but operated by another organization like a subcontractor."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates a legal jurisdiction, e.g. of some legislation, or where some government service is based.
      def jurisdiction
        read_property(:jurisdiction)
      end

      # Indicates a legal jurisdiction, e.g. of some legislation, or where some government service is based.
      def jurisdiction=(value)
        write_property(:jurisdiction, value)
      end

      # The operating organization, if different from the provider.  This enables the representation of services that are provided by an organization, but operated by another organization like a subcontractor.
      def service_operator
        read_property(:service_operator)
      end

      # The operating organization, if different from the provider.  This enables the representation of services that are provided by an organization, but operated by another organization like a subcontractor.
      def service_operator=(value)
        write_property(:service_operator, value)
      end
    end
  end
end
