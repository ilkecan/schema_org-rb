# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DrugClass
      include MedicalEntity

      def self.schema_property_definitions
        {
          drug: {
            schema_name: "drug",
            schema_url: "https://schema.org/drug",
            comment_lines: ["Specifying a drug or medicine used in a medication procedure."].freeze,
            ranges: ["Drug"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifying a drug or medicine used in a medication procedure.
      def drug
        read_property(:drug)
      end

      # Specifying a drug or medicine used in a medication procedure.
      def drug=(value)
        write_property(:drug, value)
      end
    end
  end
end
