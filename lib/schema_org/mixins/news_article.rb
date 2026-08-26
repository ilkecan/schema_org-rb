module SchemaOrg
  module Mixins
    module NewsArticle
      include Article

      def self.schema_property_definitions
        {
          :dateline => {
            schema_name: "dateline",
            ranges: ["Text"],
          }.freeze,
          :print_column => {
            schema_name: "printColumn",
            ranges: ["Text"],
          }.freeze,
          :print_edition => {
            schema_name: "printEdition",
            ranges: ["Text"],
          }.freeze,
          :print_page => {
            schema_name: "printPage",
            ranges: ["Text"],
          }.freeze,
          :print_section => {
            schema_name: "printSection",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def dateline
        read_property(:dateline)
      end

      def dateline=(value)
        write_property(:dateline, value)
      end

      def print_column
        read_property(:print_column)
      end

      def print_column=(value)
        write_property(:print_column, value)
      end

      def print_edition
        read_property(:print_edition)
      end

      def print_edition=(value)
        write_property(:print_edition, value)
      end

      def print_page
        read_property(:print_page)
      end

      def print_page=(value)
        write_property(:print_page, value)
      end

      def print_section
        read_property(:print_section)
      end

      def print_section=(value)
        write_property(:print_section, value)
      end

    end
  end
end
