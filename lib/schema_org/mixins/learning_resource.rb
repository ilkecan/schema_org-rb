# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module LearningResource
      include CreativeWork

      def self.schema_property_definitions
        {
          assesses: {
            schema_name: "assesses",
            schema_url: "https://schema.org/assesses",
            comment_lines: ["The item being described is intended to assess the competency or learning outcome defined by the referenced term."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          educational_alignment: {
            schema_name: "educationalAlignment",
            schema_url: "https://schema.org/educationalAlignment",
            comment_lines: ["An alignment to an established educational framework.", "", "This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency."].freeze,
            ranges: ["AlignmentObject"].freeze,
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
          }.freeze,
          educational_use: {
            schema_name: "educationalUse",
            schema_url: "https://schema.org/educationalUse",
            comment_lines: ["The purpose of a work in the context of education; for example, 'assignment', 'group work'."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          learning_resource_type: {
            schema_name: "learningResourceType",
            schema_url: "https://schema.org/learningResourceType",
            comment_lines: ["The predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          teaches: {
            schema_name: "teaches",
            schema_url: "https://schema.org/teaches",
            comment_lines: ["The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The item being described is intended to assess the competency or learning outcome defined by the referenced term.
      def assesses
        read_property(:assesses)
      end

      # The item being described is intended to assess the competency or learning outcome defined by the referenced term.
      def assesses=(value)
        write_property(:assesses, value)
      end

      # Knowledge, skill, ability or personal attribute that must be demonstrated by a person or other entity in order to do something such as earn an Educational Occupational Credential or understand a LearningResource.
      def competency_required
        read_property(:competency_required)
      end

      # Knowledge, skill, ability or personal attribute that must be demonstrated by a person or other entity in order to do something such as earn an Educational Occupational Credential or understand a LearningResource.
      def competency_required=(value)
        write_property(:competency_required, value)
      end

      # An alignment to an established educational framework.
      #
      # This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.
      def educational_alignment
        read_property(:educational_alignment)
      end

      # An alignment to an established educational framework.
      #
      # This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.
      def educational_alignment=(value)
        write_property(:educational_alignment, value)
      end

      # The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators.
      def educational_level
        read_property(:educational_level)
      end

      # The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators.
      def educational_level=(value)
        write_property(:educational_level, value)
      end

      # The purpose of a work in the context of education; for example, 'assignment', 'group work'.
      def educational_use
        read_property(:educational_use)
      end

      # The purpose of a work in the context of education; for example, 'assignment', 'group work'.
      def educational_use=(value)
        write_property(:educational_use, value)
      end

      # The predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'.
      def learning_resource_type
        read_property(:learning_resource_type)
      end

      # The predominant type or kind characterizing the learning resource. For example, 'presentation', 'handout'.
      def learning_resource_type=(value)
        write_property(:learning_resource_type, value)
      end

      # The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term.
      def teaches
        read_property(:teaches)
      end

      # The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term.
      def teaches=(value)
        write_property(:teaches, value)
      end
    end
  end
end
