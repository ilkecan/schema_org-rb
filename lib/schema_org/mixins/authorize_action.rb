module SchemaOrg
  module Mixins
    module AuthorizeAction
      include AllocateAction

      def self.schema_property_definitions
        {
          :recipient => {
            schema_name: "recipient",
            ranges: ["Audience", "ContactPoint", "Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def recipient
        read_property(:recipient)
      end

      def recipient=(value)
        write_property(:recipient, value)
      end

    end
  end
end
