# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module DrugStrength
      include MedicalIntangible

      def self.schema_property_definitions
        {
          active_ingredient: {
            schema_name: "activeIngredient",
            schema_url: "https://schema.org/activeIngredient",
            comment_lines: ["An active ingredient, typically chemical compounds and/or biologic substances."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          available_in: {
            schema_name: "availableIn",
            schema_url: "https://schema.org/availableIn",
            comment_lines: ["The location in which the strength is available."].freeze,
            ranges: ["AdministrativeArea"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          maximum_intake: {
            schema_name: "maximumIntake",
            schema_url: "https://schema.org/maximumIntake",
            comment_lines: ["Recommended intake of this supplement for a given population as defined by a specific recommending authority."].freeze,
            ranges: ["MaximumDoseSchedule"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          strength_unit: {
            schema_name: "strengthUnit",
            schema_url: "https://schema.org/strengthUnit",
            comment_lines: ["The units of an active ingredient's strength, e.g. mg."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          strength_value: {
            schema_name: "strengthValue",
            schema_url: "https://schema.org/strengthValue",
            comment_lines: ["The value of an active ingredient's strength, e.g. 325."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An active ingredient, typically chemical compounds and/or biologic substances.
      def active_ingredient
        read_property(:active_ingredient)
      end

      # An active ingredient, typically chemical compounds and/or biologic substances.
      def active_ingredient=(value)
        write_property(:active_ingredient, value)
      end

      # The location in which the strength is available.
      def available_in
        read_property(:available_in)
      end

      # The location in which the strength is available.
      def available_in=(value)
        write_property(:available_in, value)
      end

      # Recommended intake of this supplement for a given population as defined by a specific recommending authority.
      def maximum_intake
        read_property(:maximum_intake)
      end

      # Recommended intake of this supplement for a given population as defined by a specific recommending authority.
      def maximum_intake=(value)
        write_property(:maximum_intake, value)
      end

      # The units of an active ingredient's strength, e.g. mg.
      def strength_unit
        read_property(:strength_unit)
      end

      # The units of an active ingredient's strength, e.g. mg.
      def strength_unit=(value)
        write_property(:strength_unit, value)
      end

      # The value of an active ingredient's strength, e.g. 325.
      def strength_value
        read_property(:strength_value)
      end

      # The value of an active ingredient's strength, e.g. 325.
      def strength_value=(value)
        write_property(:strength_value, value)
      end
    end
  end
end
