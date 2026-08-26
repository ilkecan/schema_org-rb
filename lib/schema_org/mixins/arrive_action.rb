module SchemaOrg
  module Mixins
    module ArriveAction
      include MoveAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
