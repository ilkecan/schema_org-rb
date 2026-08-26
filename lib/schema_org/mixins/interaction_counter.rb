module SchemaOrg
  module Mixins
    module InteractionCounter
      include StructuredValue

      def self.schema_property_definitions
        {
          :end_time => {
            schema_name: "endTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :interaction_service => {
            schema_name: "interactionService",
            ranges: ["SoftwareApplication", "WebSite"],
          }.freeze,
          :interaction_type => {
            schema_name: "interactionType",
            ranges: ["Action"],
          }.freeze,
          :location => {
            schema_name: "location",
            ranges: ["Place", "PostalAddress", "Text"],
          }.freeze,
          :start_time => {
            schema_name: "startTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :user_interaction_count => {
            schema_name: "userInteractionCount",
            ranges: ["Integer"],
          }.freeze,
        }.freeze
      end

      def end_time
        read_property(:end_time)
      end

      def end_time=(value)
        write_property(:end_time, value)
      end

      def interaction_service
        read_property(:interaction_service)
      end

      def interaction_service=(value)
        write_property(:interaction_service, value)
      end

      def interaction_type
        read_property(:interaction_type)
      end

      def interaction_type=(value)
        write_property(:interaction_type, value)
      end

      def location
        read_property(:location)
      end

      def location=(value)
        write_property(:location, value)
      end

      def start_time
        read_property(:start_time)
      end

      def start_time=(value)
        write_property(:start_time, value)
      end

      def user_interaction_count
        read_property(:user_interaction_count)
      end

      def user_interaction_count=(value)
        write_property(:user_interaction_count, value)
      end

    end
  end
end
