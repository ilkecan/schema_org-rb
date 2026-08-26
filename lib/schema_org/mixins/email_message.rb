module SchemaOrg
  module Mixins
    module EmailMessage
      include Message

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
