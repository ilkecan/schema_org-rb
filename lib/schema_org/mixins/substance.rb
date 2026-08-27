# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Substance
      include MedicalEntity

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
          maximum_intake: {
            schema_name: "maximumIntake",
            schema_url: "https://schema.org/maximumIntake",
            comment_lines: ["Recommended intake of this supplement for a given population as defined by a specific recommending authority."].freeze,
            ranges: ["MaximumDoseSchedule"].freeze,
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

      # Recommended intake of this supplement for a given population as defined by a specific recommending authority.
      def maximum_intake
        read_property(:maximum_intake)
      end

      # Recommended intake of this supplement for a given population as defined by a specific recommending authority.
      def maximum_intake=(value)
        write_property(:maximum_intake, value)
      end
    end
  end
end
