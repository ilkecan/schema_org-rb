module SchemaOrg
  module Mixins
    module FastFoodRestaurant
      include FoodEstablishment

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
