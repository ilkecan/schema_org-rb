# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PathologyTest
      include MedicalTest

      def self.schema_property_definitions
        {
          tissue_sample: {
            schema_name: "tissueSample",
            schema_url: "https://schema.org/tissueSample",
            comment_lines: ["The type of tissue sample required for the test."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The type of tissue sample required for the test.
      def tissue_sample
        read_property(:tissue_sample)
      end

      # The type of tissue sample required for the test.
      def tissue_sample=(value)
        write_property(:tissue_sample, value)
      end
    end
  end
end
