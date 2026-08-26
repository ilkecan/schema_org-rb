module SchemaOrg
  module Mixins
    module IgnoreAction
      include AssessAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
