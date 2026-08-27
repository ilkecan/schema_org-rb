# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Observation
      include Intangible
      include QuantitativeValue

      def self.schema_property_definitions
        {
          margin_of_error: {
            schema_name: "marginOfError",
            schema_url: "https://schema.org/marginOfError",
            comment_lines: ["A [[marginOfError]] for an [[Observation]]."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          measured_property: {
            schema_name: "measuredProperty",
            schema_url: "https://schema.org/measuredProperty",
            comment_lines: ["The measuredProperty of an [[Observation]], typically via its [[StatisticalVariable]]. There are various kinds of applicable [[Property]]: a schema.org property, a property from other RDF-compatible systems, e.g. W3C RDF Data Cube, Data Commons, Wikidata, or schema.org extensions such as [GS1's](https://www.gs1.org/voc/?show=properties)."].freeze,
            ranges: [].freeze,
            external_ranges: ["Property"].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          measurement_denominator: {
            schema_name: "measurementDenominator",
            schema_url: "https://schema.org/measurementDenominator",
            comment_lines: ["Identifies the denominator variable when an observation represents a ratio or percentage."].freeze,
            ranges: ["StatisticalVariable"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          measurement_method: {
            schema_name: "measurementMethod",
            schema_url: "https://schema.org/measurementMethod",
            comment_lines: ["A subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via [[MeasurementMethodEnum]]."].freeze,
            ranges: ["DefinedTerm", "MeasurementMethodEnum", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          measurement_qualifier: {
            schema_name: "measurementQualifier",
            schema_url: "https://schema.org/measurementQualifier",
            comment_lines: ["Provides additional qualification to an observation. For example, a GDP observation measures the Nominal value."].freeze,
            ranges: ["Enumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          measurement_technique: {
            schema_name: "measurementTechnique",
            schema_url: "https://schema.org/measurementTechnique",
            comment_lines: ["A technique, method or technology used in an [[Observation]], [[StatisticalVariable]] or [[Dataset]] (or [[DataDownload]], [[DataCatalog]]), corresponding to the method used for measuring the corresponding variable(s) (for datasets, described using [[variableMeasured]]; for [[Observation]], a [[StatisticalVariable]]). Often but not necessarily each [[variableMeasured]] will have an explicit representation as (or mapping to) an property such as those defined in Schema.org, or other RDF vocabularies and \"knowledge graphs\". In that case the subproperty of [[variableMeasured]] called [[measuredProperty]] is applicable.", "", "The [[measurementTechnique]] property helps when extra clarification is needed about how a [[measuredProperty]] was measured. This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but can often serve as a high level summary for dataset discovery.", "", "For example, if [[variableMeasured]] is: molecule concentration, [[measurementTechnique]] could be: \"mass spectrometry\" or \"nmr spectroscopy\" or \"colorimetry\" or \"immunofluorescence\". If the [[variableMeasured]] is \"depression rating\", the [[measurementTechnique]] could be \"Zung Scale\" or \"HAM-D\" or \"Beck Depression Inventory\".", "", "If there are several [[variableMeasured]] properties recorded for some given data object, use a [[PropertyValue]] for each [[variableMeasured]] and attach the corresponding [[measurementTechnique]]. The value can also be from an enumeration, organized as a [[MeasurementMethodEnum]]."].freeze,
            ranges: ["DefinedTerm", "MeasurementMethodEnum", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          observation_about: {
            schema_name: "observationAbout",
            schema_url: "https://schema.org/observationAbout",
            comment_lines: ["The [[observationAbout]] property identifies an entity, often a [[Place]], associated with an [[Observation]]."].freeze,
            ranges: ["Place", "Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          observation_date: {
            schema_name: "observationDate",
            schema_url: "https://schema.org/observationDate",
            comment_lines: ["The observationDate of an [[Observation]]."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          observation_period: {
            schema_name: "observationPeriod",
            schema_url: "https://schema.org/observationPeriod",
            comment_lines: ["The length of time an Observation took place over. The format follows `P[0-9]*[Y|M|D|h|m|s]`. For example, P1Y is Period 1 Year, P3M is Period 3 Months, P3h is Period 3 hours."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          variable_measured: {
            schema_name: "variableMeasured",
            schema_url: "https://schema.org/variableMeasured",
            comment_lines: ["The variableMeasured property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue, or more explicitly as a [[StatisticalVariable]]."].freeze,
            ranges: ["PropertyValue", "StatisticalVariable", "Text"].freeze,
            external_ranges: ["Property"].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A [[marginOfError]] for an [[Observation]].
      def margin_of_error
        read_property(:margin_of_error)
      end

      # A [[marginOfError]] for an [[Observation]].
      def margin_of_error=(value)
        write_property(:margin_of_error, value)
      end

      # The measuredProperty of an [[Observation]], typically via its [[StatisticalVariable]]. There are various kinds of applicable [[Property]]: a schema.org property, a property from other RDF-compatible systems, e.g. W3C RDF Data Cube, Data Commons, Wikidata, or schema.org extensions such as [GS1's](https://www.gs1.org/voc/?show=properties).
      def measured_property
        read_property(:measured_property)
      end

      # The measuredProperty of an [[Observation]], typically via its [[StatisticalVariable]]. There are various kinds of applicable [[Property]]: a schema.org property, a property from other RDF-compatible systems, e.g. W3C RDF Data Cube, Data Commons, Wikidata, or schema.org extensions such as [GS1's](https://www.gs1.org/voc/?show=properties).
      def measured_property=(value)
        write_property(:measured_property, value)
      end

      # Identifies the denominator variable when an observation represents a ratio or percentage.
      def measurement_denominator
        read_property(:measurement_denominator)
      end

      # Identifies the denominator variable when an observation represents a ratio or percentage.
      def measurement_denominator=(value)
        write_property(:measurement_denominator, value)
      end

      # A subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via [[MeasurementMethodEnum]].
      def measurement_method
        read_property(:measurement_method)
      end

      # A subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via [[MeasurementMethodEnum]].
      def measurement_method=(value)
        write_property(:measurement_method, value)
      end

      # Provides additional qualification to an observation. For example, a GDP observation measures the Nominal value.
      def measurement_qualifier
        read_property(:measurement_qualifier)
      end

      # Provides additional qualification to an observation. For example, a GDP observation measures the Nominal value.
      def measurement_qualifier=(value)
        write_property(:measurement_qualifier, value)
      end

      # A technique, method or technology used in an [[Observation]], [[StatisticalVariable]] or [[Dataset]] (or [[DataDownload]], [[DataCatalog]]), corresponding to the method used for measuring the corresponding variable(s) (for datasets, described using [[variableMeasured]]; for [[Observation]], a [[StatisticalVariable]]). Often but not necessarily each [[variableMeasured]] will have an explicit representation as (or mapping to) an property such as those defined in Schema.org, or other RDF vocabularies and "knowledge graphs". In that case the subproperty of [[variableMeasured]] called [[measuredProperty]] is applicable.
      #
      # The [[measurementTechnique]] property helps when extra clarification is needed about how a [[measuredProperty]] was measured. This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but can often serve as a high level summary for dataset discovery.
      #
      # For example, if [[variableMeasured]] is: molecule concentration, [[measurementTechnique]] could be: "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or "immunofluorescence". If the [[variableMeasured]] is "depression rating", the [[measurementTechnique]] could be "Zung Scale" or "HAM-D" or "Beck Depression Inventory".
      #
      # If there are several [[variableMeasured]] properties recorded for some given data object, use a [[PropertyValue]] for each [[variableMeasured]] and attach the corresponding [[measurementTechnique]]. The value can also be from an enumeration, organized as a [[MeasurementMethodEnum]].
      def measurement_technique
        read_property(:measurement_technique)
      end

      # A technique, method or technology used in an [[Observation]], [[StatisticalVariable]] or [[Dataset]] (or [[DataDownload]], [[DataCatalog]]), corresponding to the method used for measuring the corresponding variable(s) (for datasets, described using [[variableMeasured]]; for [[Observation]], a [[StatisticalVariable]]). Often but not necessarily each [[variableMeasured]] will have an explicit representation as (or mapping to) an property such as those defined in Schema.org, or other RDF vocabularies and "knowledge graphs". In that case the subproperty of [[variableMeasured]] called [[measuredProperty]] is applicable.
      #
      # The [[measurementTechnique]] property helps when extra clarification is needed about how a [[measuredProperty]] was measured. This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but can often serve as a high level summary for dataset discovery.
      #
      # For example, if [[variableMeasured]] is: molecule concentration, [[measurementTechnique]] could be: "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or "immunofluorescence". If the [[variableMeasured]] is "depression rating", the [[measurementTechnique]] could be "Zung Scale" or "HAM-D" or "Beck Depression Inventory".
      #
      # If there are several [[variableMeasured]] properties recorded for some given data object, use a [[PropertyValue]] for each [[variableMeasured]] and attach the corresponding [[measurementTechnique]]. The value can also be from an enumeration, organized as a [[MeasurementMethodEnum]].
      def measurement_technique=(value)
        write_property(:measurement_technique, value)
      end

      # The [[observationAbout]] property identifies an entity, often a [[Place]], associated with an [[Observation]].
      def observation_about
        read_property(:observation_about)
      end

      # The [[observationAbout]] property identifies an entity, often a [[Place]], associated with an [[Observation]].
      def observation_about=(value)
        write_property(:observation_about, value)
      end

      # The observationDate of an [[Observation]].
      def observation_date
        read_property(:observation_date)
      end

      # The observationDate of an [[Observation]].
      def observation_date=(value)
        write_property(:observation_date, value)
      end

      # The length of time an Observation took place over. The format follows `P[0-9]*[Y|M|D|h|m|s]`. For example, P1Y is Period 1 Year, P3M is Period 3 Months, P3h is Period 3 hours.
      def observation_period
        read_property(:observation_period)
      end

      # The length of time an Observation took place over. The format follows `P[0-9]*[Y|M|D|h|m|s]`. For example, P1Y is Period 1 Year, P3M is Period 3 Months, P3h is Period 3 hours.
      def observation_period=(value)
        write_property(:observation_period, value)
      end

      # The variableMeasured property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue, or more explicitly as a [[StatisticalVariable]].
      def variable_measured
        read_property(:variable_measured)
      end

      # The variableMeasured property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue, or more explicitly as a [[StatisticalVariable]].
      def variable_measured=(value)
        write_property(:variable_measured, value)
      end
    end
  end
end
