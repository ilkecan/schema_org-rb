# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module AlignmentObject
      include Intangible

      def self.schema_property_definitions
        {
          alignment_type: {
            schema_name: "alignmentType",
            schema_url: "https://schema.org/alignmentType",
            comment_lines: ["A category of alignment between the learning resource and the framework node. Recommended values include: 'requires', 'textComplexity', 'readingLevel', and 'educationalSubject'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_framework: {
            schema_name: "educationalFramework",
            schema_url: "https://schema.org/educationalFramework",
            comment_lines: ["The framework to which the resource being described is aligned."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          target_description: {
            schema_name: "targetDescription",
            schema_url: "https://schema.org/targetDescription",
            comment_lines: ["The description of a node in an established educational framework."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          target_name: {
            schema_name: "targetName",
            schema_url: "https://schema.org/targetName",
            comment_lines: ["The name of a node in an established educational framework."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          target_url: {
            schema_name: "targetUrl",
            schema_url: "https://schema.org/targetUrl",
            comment_lines: ["The URL of a node in an established educational framework."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A category of alignment between the learning resource and the framework node. Recommended values include: 'requires', 'textComplexity', 'readingLevel', and 'educationalSubject'.
      def alignment_type
        read_property(:alignment_type)
      end

      # A category of alignment between the learning resource and the framework node. Recommended values include: 'requires', 'textComplexity', 'readingLevel', and 'educationalSubject'.
      def alignment_type=(value)
        write_property(:alignment_type, value)
      end

      # The framework to which the resource being described is aligned.
      def educational_framework
        read_property(:educational_framework)
      end

      # The framework to which the resource being described is aligned.
      def educational_framework=(value)
        write_property(:educational_framework, value)
      end

      # The description of a node in an established educational framework.
      def target_description
        read_property(:target_description)
      end

      # The description of a node in an established educational framework.
      def target_description=(value)
        write_property(:target_description, value)
      end

      # The name of a node in an established educational framework.
      def target_name
        read_property(:target_name)
      end

      # The name of a node in an established educational framework.
      def target_name=(value)
        write_property(:target_name, value)
      end

      # The URL of a node in an established educational framework.
      def target_url
        read_property(:target_url)
      end

      # The URL of a node in an established educational framework.
      def target_url=(value)
        write_property(:target_url, value)
      end
    end
  end
end
