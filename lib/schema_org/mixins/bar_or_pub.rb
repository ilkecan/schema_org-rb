module SchemaOrg
  module Mixins
    module BarOrPub
      include FoodEstablishment

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
