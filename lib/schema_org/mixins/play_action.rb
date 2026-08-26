module SchemaOrg
  module Mixins
    module PlayAction
      include Action

      def self.schema_property_definitions
        {
          :audience => {
            schema_name: "audience",
            ranges: ["Audience"],
          }.freeze,
          :event => {
            schema_name: "event",
            ranges: ["Event"],
          }.freeze,
        }.freeze
      end

      def audience
        read_property(:audience)
      end

      def audience=(value)
        write_property(:audience, value)
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
