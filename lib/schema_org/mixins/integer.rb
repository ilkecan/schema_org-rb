module SchemaOrg
  module Mixins
    module Integer
      include Number

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
