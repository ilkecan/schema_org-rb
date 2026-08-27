# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module PhysicalActivity
      include LifestyleModification

      def self.schema_property_definitions
        {
          associated_anatomy: {
            schema_name: "associatedAnatomy",
            schema_url: "https://schema.org/associatedAnatomy",
            comment_lines: ["The anatomy of the underlying organ system or structures associated with this entity."].freeze,
            ranges: ["AnatomicalStructure", "AnatomicalSystem", "SuperficialAnatomy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          category: {
            schema_name: "category",
            schema_url: "https://schema.org/category",
            comment_lines: ["A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."].freeze,
            ranges: ["CategoryCode", "PhysicalActivityCategory", "Text", "Thing", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          epidemiology: {
            schema_name: "epidemiology",
            schema_url: "https://schema.org/epidemiology",
            comment_lines: ["The characteristics of associated patients, such as age, gender, race etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pathophysiology: {
            schema_name: "pathophysiology",
            schema_url: "https://schema.org/pathophysiology",
            comment_lines: ["Changes in the normal mechanical, physical, and biochemical functions that are associated with this activity or condition."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The anatomy of the underlying organ system or structures associated with this entity.
      def associated_anatomy
        read_property(:associated_anatomy)
      end

      # The anatomy of the underlying organ system or structures associated with this entity.
      def associated_anatomy=(value)
        write_property(:associated_anatomy, value)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category
        read_property(:category)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category=(value)
        write_property(:category, value)
      end

      # The characteristics of associated patients, such as age, gender, race etc.
      def epidemiology
        read_property(:epidemiology)
      end

      # The characteristics of associated patients, such as age, gender, race etc.
      def epidemiology=(value)
        write_property(:epidemiology, value)
      end

      # Changes in the normal mechanical, physical, and biochemical functions that are associated with this activity or condition.
      def pathophysiology
        read_property(:pathophysiology)
      end

      # Changes in the normal mechanical, physical, and biochemical functions that are associated with this activity or condition.
      def pathophysiology=(value)
        write_property(:pathophysiology, value)
      end
    end
  end
end
