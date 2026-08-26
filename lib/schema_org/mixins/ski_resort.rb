module SchemaOrg
  module Mixins
    module SkiResort
      include Resort
      include SportsActivityLocation

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
