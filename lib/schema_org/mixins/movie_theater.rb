module SchemaOrg
  module Mixins
    module MovieTheater
      include CivicStructure
      include EntertainmentBusiness

      def self.schema_property_definitions
        {
          :screen_count => {
            schema_name: "screenCount",
            ranges: ["Number"],
          }.freeze,
        }.freeze
      end

      def screen_count
        read_property(:screen_count)
      end

      def screen_count=(value)
        write_property(:screen_count, value)
      end

    end
  end
end
