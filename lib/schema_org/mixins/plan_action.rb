module SchemaOrg
  module Mixins
    module PlanAction
      include OrganizeAction

      def self.schema_property_definitions
        {
          :scheduled_time => {
            schema_name: "scheduledTime",
            ranges: ["Date", "DateTime"],
          }.freeze,
        }.freeze
      end

      def scheduled_time
        read_property(:scheduled_time)
      end

      def scheduled_time=(value)
        write_property(:scheduled_time, value)
      end

    end
  end
end
