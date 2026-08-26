# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module StatisticalVariable
      include ConstraintNode

      def self.schema_property_definitions
        {
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
          population_type: {
            schema_name: "populationType",
            schema_url: "https://schema.org/populationType",
            comment_lines: ["Indicates the populationType common to all members of a [[StatisticalPopulation]] or all cases within the scope of a [[StatisticalVariable]]."].freeze,
            ranges: [].freeze,
            external_ranges: ["Class"].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          stat_type: {
            schema_name: "statType",
            schema_url: "https://schema.org/statType",
            comment_lines: ["Indicates the kind of statistic represented by a [[StatisticalVariable]], e.g. mean, count etc. The value of statType is a property, either from within Schema.org (e.g. [[median]], [[marginOfError]], [[maxValue]], [[minValue]]) or from other compatible (e.g. RDF) systems such as DataCommons.org or Wikidata.org."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: ["Property"].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
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

      # Indicates the populationType common to all members of a [[StatisticalPopulation]] or all cases within the scope of a [[StatisticalVariable]].
      def population_type
        read_property(:population_type)
      end

      # Indicates the populationType common to all members of a [[StatisticalPopulation]] or all cases within the scope of a [[StatisticalVariable]].
      def population_type=(value)
        write_property(:population_type, value)
      end

      # Indicates the kind of statistic represented by a [[StatisticalVariable]], e.g. mean, count etc. The value of statType is a property, either from within Schema.org (e.g. [[median]], [[marginOfError]], [[maxValue]], [[minValue]]) or from other compatible (e.g. RDF) systems such as DataCommons.org or Wikidata.org.
      def stat_type
        read_property(:stat_type)
      end

      # Indicates the kind of statistic represented by a [[StatisticalVariable]], e.g. mean, count etc. The value of statType is a property, either from within Schema.org (e.g. [[median]], [[marginOfError]], [[maxValue]], [[minValue]]) or from other compatible (e.g. RDF) systems such as DataCommons.org or Wikidata.org.
      def stat_type=(value)
        write_property(:stat_type, value)
      end
    end
  end
end
