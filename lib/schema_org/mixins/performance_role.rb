module SchemaOrg
  module Mixins
    module PerformanceRole
      include Role

      def self.schema_property_definitions
        {
          :character_name => {
            schema_name: "characterName",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def character_name
        read_property(:character_name)
      end

      def character_name=(value)
        write_property(:character_name, value)
      end

    end
  end
end
