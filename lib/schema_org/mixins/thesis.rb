# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Thesis
      include CreativeWork

      def self.schema_property_definitions
        {
          in_support_of: {
            schema_name: "inSupportOf",
            schema_url: "https://schema.org/inSupportOf",
            comment_lines: ["Qualification, candidature, degree, application that Thesis supports."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Qualification, candidature, degree, application that Thesis supports.
      def in_support_of
        read_property(:in_support_of)
      end

      # Qualification, candidature, degree, application that Thesis supports.
      def in_support_of=(value)
        write_property(:in_support_of, value)
      end
    end
  end
end
