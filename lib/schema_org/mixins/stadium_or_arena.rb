module SchemaOrg
  module Mixins
    module StadiumOrArena
      include CivicStructure
      include SportsActivityLocation

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
