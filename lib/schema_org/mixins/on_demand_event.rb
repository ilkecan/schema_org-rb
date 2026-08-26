module SchemaOrg
  module Mixins
    module OnDemandEvent
      include PublicationEvent

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
