# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module EducationalOccupationalCredential
      include Credential

      def self.schema_property_definitions
        {
          competency_required: {
            schema_name: "competencyRequired",
            schema_url: "https://schema.org/competencyRequired",
            comment_lines: ["Knowledge, skill, ability or personal attribute that must be demonstrated by a person or other entity in order to do something such as earn an Educational Occupational Credential or understand a LearningResource."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_level: {
            schema_name: "educationalLevel",
            schema_url: "https://schema.org/educationalLevel",
            comment_lines: ["The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Knowledge, skill, ability or personal attribute that must be demonstrated by a person or other entity in order to do something such as earn an Educational Occupational Credential or understand a LearningResource.
      def competency_required
        read_property(:competency_required)
      end

      # Knowledge, skill, ability or personal attribute that must be demonstrated by a person or other entity in order to do something such as earn an Educational Occupational Credential or understand a LearningResource.
      def competency_required=(value)
        write_property(:competency_required, value)
      end

      # The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators.
      def educational_level
        read_property(:educational_level)
      end

      # The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators.
      def educational_level=(value)
        write_property(:educational_level, value)
      end
    end
  end
end
