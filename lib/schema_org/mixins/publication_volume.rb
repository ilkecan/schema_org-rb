module SchemaOrg
  module Mixins
    module PublicationVolume
      include CreativeWork

      def self.schema_property_definitions
        {
          :page_end => {
            schema_name: "pageEnd",
            ranges: ["Integer", "Text"],
          }.freeze,
          :page_start => {
            schema_name: "pageStart",
            ranges: ["Integer", "Text"],
          }.freeze,
          :pagination => {
            schema_name: "pagination",
            ranges: ["Text"],
          }.freeze,
          :volume_number => {
            schema_name: "volumeNumber",
            ranges: ["Integer", "Text"],
          }.freeze,
        }.freeze
      end

      def page_end
        read_property(:page_end)
      end

      def page_end=(value)
        write_property(:page_end, value)
      end

      def page_start
        read_property(:page_start)
      end

      def page_start=(value)
        write_property(:page_start, value)
      end

      def pagination
        read_property(:pagination)
      end

      def pagination=(value)
        write_property(:pagination, value)
      end

      def volume_number
        read_property(:volume_number)
      end

      def volume_number=(value)
        write_property(:volume_number, value)
      end

    end
  end
end
