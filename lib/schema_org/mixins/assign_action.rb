module SchemaOrg
  module Mixins
    module AssignAction
      include AllocateAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
