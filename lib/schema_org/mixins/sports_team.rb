module SchemaOrg
  module Mixins
    module SportsTeam
      include SportsOrganization

      def self.schema_property_definitions
        {
          :athlete => {
            schema_name: "athlete",
            ranges: ["Person"],
          }.freeze,
          :coach => {
            schema_name: "coach",
            ranges: ["Person"],
          }.freeze,
        }.freeze
      end

      def athlete
        read_property(:athlete)
      end

      def athlete=(value)
        write_property(:athlete, value)
      end

      def coach
        read_property(:coach)
      end

      def coach=(value)
        write_property(:coach, value)
      end

    end
  end
end
