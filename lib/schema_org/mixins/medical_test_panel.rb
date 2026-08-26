# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalTestPanel
      include MedicalTest

      def self.schema_property_definitions
        {
          sub_test: {
            schema_name: "subTest",
            schema_url: "https://schema.org/subTest",
            comment_lines: ["A component test of the panel."].freeze,
            ranges: ["MedicalTest"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A component test of the panel.
      def sub_test
        read_property(:sub_test)
      end

      # A component test of the panel.
      def sub_test=(value)
        write_property(:sub_test, value)
      end
    end
  end
end
