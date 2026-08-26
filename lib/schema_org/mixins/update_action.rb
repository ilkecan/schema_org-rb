module SchemaOrg
  module Mixins
    module UpdateAction
      include Action

      def self.schema_property_definitions
        {
          :collection => {
            schema_name: "collection",
            ranges: ["Thing"],
          }.freeze,
          :target_collection => {
            schema_name: "targetCollection",
            ranges: ["Thing"],
          }.freeze,
        }.freeze
      end

      def collection
        read_property(:collection)
      end

      def collection=(value)
        write_property(:collection, value)
      end

      def target_collection
        read_property(:target_collection)
      end

      def target_collection=(value)
        write_property(:target_collection, value)
      end

    end
  end
end
