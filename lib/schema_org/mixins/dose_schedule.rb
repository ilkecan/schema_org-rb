# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DoseSchedule
      include MedicalIntangible

      def self.schema_property_definitions
        {
          dose_unit: {
            schema_name: "doseUnit",
            schema_url: "https://schema.org/doseUnit",
            comment_lines: ["The unit of the dose, e.g. 'mg'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          dose_value: {
            schema_name: "doseValue",
            schema_url: "https://schema.org/doseValue",
            comment_lines: ["The value of the dose, e.g. 500."].freeze,
            ranges: ["Number", "QualitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          frequency: {
            schema_name: "frequency",
            schema_url: "https://schema.org/frequency",
            comment_lines: ["How often the dose is taken, e.g. 'daily'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          target_population: {
            schema_name: "targetPopulation",
            schema_url: "https://schema.org/targetPopulation",
            comment_lines: ["Characteristics of the population for which this is intended, or which typically uses it, e.g. 'adults'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The unit of the dose, e.g. 'mg'.
      def dose_unit
        read_property(:dose_unit)
      end

      # The unit of the dose, e.g. 'mg'.
      def dose_unit=(value)
        write_property(:dose_unit, value)
      end

      # The value of the dose, e.g. 500.
      def dose_value
        read_property(:dose_value)
      end

      # The value of the dose, e.g. 500.
      def dose_value=(value)
        write_property(:dose_value, value)
      end

      # How often the dose is taken, e.g. 'daily'.
      def frequency
        read_property(:frequency)
      end

      # How often the dose is taken, e.g. 'daily'.
      def frequency=(value)
        write_property(:frequency, value)
      end

      # Characteristics of the population for which this is intended, or which typically uses it, e.g. 'adults'.
      def target_population
        read_property(:target_population)
      end

      # Characteristics of the population for which this is intended, or which typically uses it, e.g. 'adults'.
      def target_population=(value)
        write_property(:target_population, value)
      end
    end
  end
end
