# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module PeopleAudience
      include Audience

      def self.schema_property_definitions
        {
          health_condition: {
            schema_name: "healthCondition",
            schema_url: "https://schema.org/healthCondition",
            comment_lines: ["Specifying the health condition(s) of a patient, medical study, or other target audience."].freeze,
            ranges: ["MedicalCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          required_gender: {
            schema_name: "requiredGender",
            schema_url: "https://schema.org/requiredGender",
            comment_lines: ["Audiences defined by a person's gender."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          required_max_age: {
            schema_name: "requiredMaxAge",
            schema_url: "https://schema.org/requiredMaxAge",
            comment_lines: ["Audiences defined by a person's maximum age."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          required_min_age: {
            schema_name: "requiredMinAge",
            schema_url: "https://schema.org/requiredMinAge",
            comment_lines: ["Audiences defined by a person's minimum age."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          suggested_age: {
            schema_name: "suggestedAge",
            schema_url: "https://schema.org/suggestedAge",
            comment_lines: ["The age or age range for the intended audience or person, for example 3-12 months for infants, 1-5 years for toddlers."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          suggested_gender: {
            schema_name: "suggestedGender",
            schema_url: "https://schema.org/suggestedGender",
            comment_lines: ["The suggested gender of the intended person or audience, for example \"male\", \"female\", or \"unisex\"."].freeze,
            ranges: ["GenderType", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          suggested_max_age: {
            schema_name: "suggestedMaxAge",
            schema_url: "https://schema.org/suggestedMaxAge",
            comment_lines: ["Maximum recommended age in years for the audience or user."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          suggested_measurement: {
            schema_name: "suggestedMeasurement",
            schema_url: "https://schema.org/suggestedMeasurement",
            comment_lines: ["A suggested range of body measurements for the intended audience or person, for example inseam between 32 and 34 inches or height between 170 and 190 cm. Typically found on a size chart for wearable products."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          suggested_min_age: {
            schema_name: "suggestedMinAge",
            schema_url: "https://schema.org/suggestedMinAge",
            comment_lines: ["Minimum recommended age in years for the audience or user."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifying the health condition(s) of a patient, medical study, or other target audience.
      def health_condition
        read_property(:health_condition)
      end

      # Specifying the health condition(s) of a patient, medical study, or other target audience.
      def health_condition=(value)
        write_property(:health_condition, value)
      end

      # Audiences defined by a person's gender.
      def required_gender
        read_property(:required_gender)
      end

      # Audiences defined by a person's gender.
      def required_gender=(value)
        write_property(:required_gender, value)
      end

      # Audiences defined by a person's maximum age.
      def required_max_age
        read_property(:required_max_age)
      end

      # Audiences defined by a person's maximum age.
      def required_max_age=(value)
        write_property(:required_max_age, value)
      end

      # Audiences defined by a person's minimum age.
      def required_min_age
        read_property(:required_min_age)
      end

      # Audiences defined by a person's minimum age.
      def required_min_age=(value)
        write_property(:required_min_age, value)
      end

      # The age or age range for the intended audience or person, for example 3-12 months for infants, 1-5 years for toddlers.
      def suggested_age
        read_property(:suggested_age)
      end

      # The age or age range for the intended audience or person, for example 3-12 months for infants, 1-5 years for toddlers.
      def suggested_age=(value)
        write_property(:suggested_age, value)
      end

      # The suggested gender of the intended person or audience, for example "male", "female", or "unisex".
      def suggested_gender
        read_property(:suggested_gender)
      end

      # The suggested gender of the intended person or audience, for example "male", "female", or "unisex".
      def suggested_gender=(value)
        write_property(:suggested_gender, value)
      end

      # Maximum recommended age in years for the audience or user.
      def suggested_max_age
        read_property(:suggested_max_age)
      end

      # Maximum recommended age in years for the audience or user.
      def suggested_max_age=(value)
        write_property(:suggested_max_age, value)
      end

      # A suggested range of body measurements for the intended audience or person, for example inseam between 32 and 34 inches or height between 170 and 190 cm. Typically found on a size chart for wearable products.
      def suggested_measurement
        read_property(:suggested_measurement)
      end

      # A suggested range of body measurements for the intended audience or person, for example inseam between 32 and 34 inches or height between 170 and 190 cm. Typically found on a size chart for wearable products.
      def suggested_measurement=(value)
        write_property(:suggested_measurement, value)
      end

      # Minimum recommended age in years for the audience or user.
      def suggested_min_age
        read_property(:suggested_min_age)
      end

      # Minimum recommended age in years for the audience or user.
      def suggested_min_age=(value)
        write_property(:suggested_min_age, value)
      end
    end
  end
end
