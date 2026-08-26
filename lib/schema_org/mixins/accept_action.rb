module SchemaOrg
  module Mixins
    module AcceptAction
      include AllocateAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
