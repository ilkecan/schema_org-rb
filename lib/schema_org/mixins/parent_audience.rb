# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ParentAudience
      include PeopleAudience

      def self.schema_property_definitions
        {
          child_max_age: {
            schema_name: "childMaxAge",
            schema_url: "https://schema.org/childMaxAge",
            comment_lines: ["Maximal age of the child."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          child_min_age: {
            schema_name: "childMinAge",
            schema_url: "https://schema.org/childMinAge",
            comment_lines: ["Minimal age of the child."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Maximal age of the child.
      def child_max_age
        read_property(:child_max_age)
      end

      # Maximal age of the child.
      def child_max_age=(value)
        write_property(:child_max_age, value)
      end

      # Minimal age of the child.
      def child_min_age
        read_property(:child_min_age)
      end

      # Minimal age of the child.
      def child_min_age=(value)
        write_property(:child_min_age, value)
      end
    end
  end
end
