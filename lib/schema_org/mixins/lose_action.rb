module SchemaOrg
  module Mixins
    module LoseAction
      include AchieveAction

      def self.schema_property_definitions
        {
          :winner => {
            schema_name: "winner",
            ranges: ["Person"],
          }.freeze,
        }.freeze
      end

      def winner
        read_property(:winner)
      end

      def winner=(value)
        write_property(:winner, value)
      end

    end
  end
end
