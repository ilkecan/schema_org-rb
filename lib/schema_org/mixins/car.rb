module SchemaOrg
  module Mixins
    module Car
      include Vehicle

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
