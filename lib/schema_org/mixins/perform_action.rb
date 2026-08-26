module SchemaOrg
  module Mixins
    module PerformAction
      include PlayAction

      def self.schema_property_definitions
        {
          :entertainment_business => {
            schema_name: "entertainmentBusiness",
            ranges: ["EntertainmentBusiness"],
          }.freeze,
        }.freeze
      end

      def entertainment_business
        read_property(:entertainment_business)
      end

      def entertainment_business=(value)
        write_property(:entertainment_business, value)
      end

    end
  end
end
