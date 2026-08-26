module SchemaOrg
  module Mixins
    module WinAction
      include AchieveAction

      def self.schema_property_definitions
        {
          :loser => {
            schema_name: "loser",
            ranges: ["Person"],
          }.freeze,
        }.freeze
      end

      def loser
        read_property(:loser)
      end

      def loser=(value)
        write_property(:loser, value)
      end

    end
  end
end
