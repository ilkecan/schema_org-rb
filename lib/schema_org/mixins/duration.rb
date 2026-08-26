module SchemaOrg
  module Mixins
    module Duration
      include Quantity

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
