module SchemaOrg
  module Mixins
    module DataFeedItem
      include Intangible

      def self.schema_property_definitions
        {
          :date_created => {
            schema_name: "dateCreated",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :date_deleted => {
            schema_name: "dateDeleted",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :date_modified => {
            schema_name: "dateModified",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :item => {
            schema_name: "item",
            ranges: ["Thing"],
          }.freeze,
        }.freeze
      end

      def date_created
        read_property(:date_created)
      end

      def date_created=(value)
        write_property(:date_created, value)
      end

      def date_deleted
        read_property(:date_deleted)
      end

      def date_deleted=(value)
        write_property(:date_deleted, value)
      end

      def date_modified
        read_property(:date_modified)
      end

      def date_modified=(value)
        write_property(:date_modified, value)
      end

      def item
        read_property(:item)
      end

      def item=(value)
        write_property(:item, value)
      end

    end
  end
end
