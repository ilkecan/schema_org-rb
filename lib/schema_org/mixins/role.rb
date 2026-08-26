module SchemaOrg
  module Mixins
    module Role
      include Intangible

      def self.schema_property_definitions
        {
          :end_date => {
            schema_name: "endDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :named_position => {
            schema_name: "namedPosition",
            ranges: ["Text", "URL"],
          }.freeze,
          :role_name => {
            schema_name: "roleName",
            ranges: ["Text", "URL"],
          }.freeze,
          :start_date => {
            schema_name: "startDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
        }.freeze
      end

      def end_date
        read_property(:end_date)
      end

      def end_date=(value)
        write_property(:end_date, value)
      end

      def named_position
        read_property(:named_position)
      end

      def named_position=(value)
        write_property(:named_position, value)
      end

      def role_name
        read_property(:role_name)
      end

      def role_name=(value)
        write_property(:role_name, value)
      end

      def start_date
        read_property(:start_date)
      end

      def start_date=(value)
        write_property(:start_date, value)
      end

    end
  end
end
