module SchemaOrg
  module Mixins
    module DataCatalog
      include CreativeWork

      def self.schema_property_definitions
        {
          :dataset => {
            schema_name: "dataset",
            ranges: ["Dataset"],
          }.freeze,
        }.freeze
      end

      def dataset
        read_property(:dataset)
      end

      def dataset=(value)
        write_property(:dataset, value)
      end

    end
  end
end
