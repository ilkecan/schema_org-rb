module SchemaOrg
  module Mixins
    module JoinAction
      include InteractAction

      def self.schema_property_definitions
        {
          :event => {
            schema_name: "event",
            ranges: ["Event"],
          }.freeze,
        }.freeze
      end

      def event
        read_property(:event)
      end

      def event=(value)
        write_property(:event, value)
      end

    end
  end
end
