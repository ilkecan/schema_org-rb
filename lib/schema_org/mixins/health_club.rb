module SchemaOrg
  module Mixins
    module HealthClub
      include HealthAndBeautyBusiness
      include SportsActivityLocation

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
