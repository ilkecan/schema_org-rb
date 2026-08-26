module SchemaOrg
  module Mixins
    module FollowAction
      include InteractAction

      def self.schema_property_definitions
        {
          :followee => {
            schema_name: "followee",
            ranges: ["Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def followee
        read_property(:followee)
      end

      def followee=(value)
        write_property(:followee, value)
      end

    end
  end
end
