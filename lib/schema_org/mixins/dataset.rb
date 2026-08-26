module SchemaOrg
  module Mixins
    module Dataset
      include CreativeWork

      def self.schema_property_definitions
        {
          :catalog => {
            schema_name: "catalog",
            ranges: ["DataCatalog"],
          }.freeze,
          :dataset_time_interval => {
            schema_name: "datasetTimeInterval",
            ranges: ["DateTime"],
          }.freeze,
          :distribution => {
            schema_name: "distribution",
            ranges: ["DataDownload"],
          }.freeze,
          :included_data_catalog => {
            schema_name: "includedDataCatalog",
            ranges: ["DataCatalog"],
          }.freeze,
          :included_in_data_catalog => {
            schema_name: "includedInDataCatalog",
            ranges: ["DataCatalog"],
          }.freeze,
          :issn => {
            schema_name: "issn",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def catalog
        read_property(:catalog)
      end

      def catalog=(value)
        write_property(:catalog, value)
      end

      def dataset_time_interval
        read_property(:dataset_time_interval)
      end

      def dataset_time_interval=(value)
        write_property(:dataset_time_interval, value)
      end

      def distribution
        read_property(:distribution)
      end

      def distribution=(value)
        write_property(:distribution, value)
      end

      def included_data_catalog
        read_property(:included_data_catalog)
      end

      def included_data_catalog=(value)
        write_property(:included_data_catalog, value)
      end

      def included_in_data_catalog
        read_property(:included_in_data_catalog)
      end

      def included_in_data_catalog=(value)
        write_property(:included_in_data_catalog, value)
      end

      def issn
        read_property(:issn)
      end

      def issn=(value)
        write_property(:issn, value)
      end

    end
  end
end
