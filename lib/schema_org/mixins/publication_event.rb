module SchemaOrg
  module Mixins
    module PublicationEvent
      include Event

      def self.schema_property_definitions
        {
          :free => {
            schema_name: "free",
            ranges: ["Boolean"],
          }.freeze,
          :published_on => {
            schema_name: "publishedOn",
            ranges: ["BroadcastService"],
          }.freeze,
        }.freeze
      end

      def free
        read_property(:free)
      end

      def free=(value)
        write_property(:free, value)
      end

      def published_on
        read_property(:published_on)
      end

      def published_on=(value)
        write_property(:published_on, value)
      end

    end
  end
end
