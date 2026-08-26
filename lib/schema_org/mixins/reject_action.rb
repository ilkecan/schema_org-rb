module SchemaOrg
  module Mixins
    module RejectAction
      include AllocateAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
