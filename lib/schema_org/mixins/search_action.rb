module SchemaOrg
  module Mixins
    module SearchAction
      include Action

      def self.schema_property_definitions
        {
          :query => {
            schema_name: "query",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def query
        read_property(:query)
      end

      def query=(value)
        write_property(:query, value)
      end

    end
  end
end
