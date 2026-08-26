module SchemaOrg
  module Mixins
    module BusinessEvent
      include Event

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
