module SchemaOrg
  module Mixins
    module PublicationIssue
      include CreativeWork

      def self.schema_property_definitions
        {
          :issue_number => {
            schema_name: "issueNumber",
            ranges: ["Integer", "Text"],
          }.freeze,
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
        }.freeze
      end

      def issue_number
        read_property(:issue_number)
      end

      def issue_number=(value)
        write_property(:issue_number, value)
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

    end
  end
end
