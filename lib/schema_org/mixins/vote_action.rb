module SchemaOrg
  module Mixins
    module VoteAction
      include ChooseAction

      def self.schema_property_definitions
        {
          :candidate => {
            schema_name: "candidate",
            ranges: ["Person"],
          }.freeze,
        }.freeze
      end

      def candidate
        read_property(:candidate)
      end

      def candidate=(value)
        write_property(:candidate, value)
      end

    end
  end
end
