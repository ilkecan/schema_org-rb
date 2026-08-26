module SchemaOrg
  module Mixins
    module Brewery
      include FoodEstablishment

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
