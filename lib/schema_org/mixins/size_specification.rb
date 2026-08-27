# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module SizeSpecification
      include QualitativeValue

      def self.schema_property_definitions
        {
          has_measurement: {
            schema_name: "hasMeasurement",
            schema_url: "https://schema.org/hasMeasurement",
            comment_lines: ["A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          size_group: {
            schema_name: "sizeGroup",
            schema_url: "https://schema.org/sizeGroup",
            comment_lines: ["The size group (also known as \"size type\") for a product's size. Size groups are common in the fashion industry to define size segments and suggested audiences for wearable products. Multiple values can be combined, for example \"men's big and tall\", \"petite maternity\" or \"regular\"."].freeze,
            ranges: ["SizeGroupEnumeration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          size_system: {
            schema_name: "sizeSystem",
            schema_url: "https://schema.org/sizeSystem",
            comment_lines: ["The size system used to identify a product's size. Typically either a standard (for example, \"GS1\" or \"ISO-EN13402\"), country code (for example \"US\" or \"JP\"), or a measuring system (for example \"Metric\" or \"Imperial\")."].freeze,
            ranges: ["SizeSystemEnumeration", "Text"].freeze,
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
          suggested_measurement: {
            schema_name: "suggestedMeasurement",
            schema_url: "https://schema.org/suggestedMeasurement",
            comment_lines: ["A suggested range of body measurements for the intended audience or person, for example inseam between 32 and 34 inches or height between 170 and 190 cm. Typically found on a size chart for wearable products."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings.
      def has_measurement
        read_property(:has_measurement)
      end

      # A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings.
      def has_measurement=(value)
        write_property(:has_measurement, value)
      end

      # The size group (also known as "size type") for a product's size. Size groups are common in the fashion industry to define size segments and suggested audiences for wearable products. Multiple values can be combined, for example "men's big and tall", "petite maternity" or "regular".
      def size_group
        read_property(:size_group)
      end

      # The size group (also known as "size type") for a product's size. Size groups are common in the fashion industry to define size segments and suggested audiences for wearable products. Multiple values can be combined, for example "men's big and tall", "petite maternity" or "regular".
      def size_group=(value)
        write_property(:size_group, value)
      end

      # The size system used to identify a product's size. Typically either a standard (for example, "GS1" or "ISO-EN13402"), country code (for example "US" or "JP"), or a measuring system (for example "Metric" or "Imperial").
      def size_system
        read_property(:size_system)
      end

      # The size system used to identify a product's size. Typically either a standard (for example, "GS1" or "ISO-EN13402"), country code (for example "US" or "JP"), or a measuring system (for example "Metric" or "Imperial").
      def size_system=(value)
        write_property(:size_system, value)
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

      # A suggested range of body measurements for the intended audience or person, for example inseam between 32 and 34 inches or height between 170 and 190 cm. Typically found on a size chart for wearable products.
      def suggested_measurement
        read_property(:suggested_measurement)
      end

      # A suggested range of body measurements for the intended audience or person, for example inseam between 32 and 34 inches or height between 170 and 190 cm. Typically found on a size chart for wearable products.
      def suggested_measurement=(value)
        write_property(:suggested_measurement, value)
      end
    end
  end
end
