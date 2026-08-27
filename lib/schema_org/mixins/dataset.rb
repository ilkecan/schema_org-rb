# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Dataset
      include CreativeWork

      def self.schema_property_definitions
        {
          catalog: {
            schema_name: "catalog",
            schema_url: "https://schema.org/catalog",
            comment_lines: ["A data catalog which contains this dataset."].freeze,
            ranges: ["DataCatalog"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "includedInDataCatalog",
            supersedes: nil
          }.freeze,
          dataset_time_interval: {
            schema_name: "datasetTimeInterval",
            schema_url: "https://schema.org/datasetTimeInterval",
            comment_lines: ["The range of temporal applicability of a dataset, e.g. for a 2011 census dataset, the year 2011 (in ISO 8601 time interval format)."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "temporalCoverage",
            supersedes: nil
          }.freeze,
          distribution: {
            schema_name: "distribution",
            schema_url: "https://schema.org/distribution",
            comment_lines: ["A downloadable form of this dataset, at a specific location, in a specific format. This property can be repeated if different variations are available. There is no expectation that different downloadable distributions must contain exactly equivalent information (see also [DCAT](https://www.w3.org/TR/vocab-dcat-3/#Class:Distribution) on this point). Different distributions might include or exclude different subsets of the entire dataset, for example."].freeze,
            ranges: ["DataDownload"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          included_data_catalog: {
            schema_name: "includedDataCatalog",
            schema_url: "https://schema.org/includedDataCatalog",
            comment_lines: ["A data catalog which contains this dataset (this property was previously 'catalog', preferred name is now 'includedInDataCatalog')."].freeze,
            ranges: ["DataCatalog"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "includedInDataCatalog",
            supersedes: nil
          }.freeze,
          included_in_data_catalog: {
            schema_name: "includedInDataCatalog",
            schema_url: "https://schema.org/includedInDataCatalog",
            comment_lines: ["A data catalog which contains this dataset."].freeze,
            ranges: ["DataCatalog"].freeze,
            external_ranges: [].freeze,
            inverse_of: "dataset",
            superseded_by: nil,
            supersedes: "includedDataCatalog"
          }.freeze,
          issn: {
            schema_name: "issn",
            schema_url: "https://schema.org/issn",
            comment_lines: ["The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication."].freeze,
            ranges: ["Text"].freeze,
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
          variable_measured: {
            schema_name: "variableMeasured",
            schema_url: "https://schema.org/variableMeasured",
            comment_lines: ["The variableMeasured property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue, or more explicitly as a [[StatisticalVariable]]."].freeze,
            ranges: ["PropertyValue", "StatisticalVariable", "Text"].freeze,
            external_ranges: ["Property"].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          variables_measured: {
            schema_name: "variablesMeasured",
            schema_url: "https://schema.org/variablesMeasured",
            comment_lines: ["Originally named [[variablesMeasured]], the [[variableMeasured]] property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue."].freeze,
            ranges: ["PropertyValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A data catalog which contains this dataset.
      # Superseded by `includedInDataCatalog`.
      def catalog
        read_property(:catalog)
      end

      # A data catalog which contains this dataset.
      # Superseded by `includedInDataCatalog`.
      def catalog=(value)
        write_property(:catalog, value)
      end

      # The range of temporal applicability of a dataset, e.g. for a 2011 census dataset, the year 2011 (in ISO 8601 time interval format).
      # Superseded by `temporalCoverage`.
      def dataset_time_interval
        read_property(:dataset_time_interval)
      end

      # The range of temporal applicability of a dataset, e.g. for a 2011 census dataset, the year 2011 (in ISO 8601 time interval format).
      # Superseded by `temporalCoverage`.
      def dataset_time_interval=(value)
        write_property(:dataset_time_interval, value)
      end

      # A downloadable form of this dataset, at a specific location, in a specific format. This property can be repeated if different variations are available. There is no expectation that different downloadable distributions must contain exactly equivalent information (see also [DCAT](https://www.w3.org/TR/vocab-dcat-3/#Class:Distribution) on this point). Different distributions might include or exclude different subsets of the entire dataset, for example.
      def distribution
        read_property(:distribution)
      end

      # A downloadable form of this dataset, at a specific location, in a specific format. This property can be repeated if different variations are available. There is no expectation that different downloadable distributions must contain exactly equivalent information (see also [DCAT](https://www.w3.org/TR/vocab-dcat-3/#Class:Distribution) on this point). Different distributions might include or exclude different subsets of the entire dataset, for example.
      def distribution=(value)
        write_property(:distribution, value)
      end

      # A data catalog which contains this dataset (this property was previously 'catalog', preferred name is now 'includedInDataCatalog').
      # Superseded by `includedInDataCatalog`.
      def included_data_catalog
        read_property(:included_data_catalog)
      end

      # A data catalog which contains this dataset (this property was previously 'catalog', preferred name is now 'includedInDataCatalog').
      # Superseded by `includedInDataCatalog`.
      def included_data_catalog=(value)
        write_property(:included_data_catalog, value)
      end

      # A data catalog which contains this dataset.
      # Supersedes `includedDataCatalog`.
      # Inverse-property: `dataset`.
      def included_in_data_catalog
        read_property(:included_in_data_catalog)
      end

      # A data catalog which contains this dataset.
      # Supersedes `includedDataCatalog`.
      # Inverse-property: `dataset`.
      def included_in_data_catalog=(value)
        write_property(:included_in_data_catalog, value)
      end

      # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
      def issn
        read_property(:issn)
      end

      # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
      def issn=(value)
        write_property(:issn, value)
      end

      # A subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via [[MeasurementMethodEnum]].
      def measurement_method
        read_property(:measurement_method)
      end

      # A subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via [[MeasurementMethodEnum]].
      def measurement_method=(value)
        write_property(:measurement_method, value)
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

      # The variableMeasured property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue, or more explicitly as a [[StatisticalVariable]].
      def variable_measured
        read_property(:variable_measured)
      end

      # The variableMeasured property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue, or more explicitly as a [[StatisticalVariable]].
      def variable_measured=(value)
        write_property(:variable_measured, value)
      end

      # Originally named [[variablesMeasured]], the [[variableMeasured]] property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue.
      def variables_measured
        read_property(:variables_measured)
      end

      # Originally named [[variablesMeasured]], the [[variableMeasured]] property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue.
      def variables_measured=(value)
        write_property(:variables_measured, value)
      end
    end
  end
end
