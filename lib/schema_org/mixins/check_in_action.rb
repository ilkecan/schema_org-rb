module SchemaOrg
  module Mixins
    module CheckInAction
      include CommunicateAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
