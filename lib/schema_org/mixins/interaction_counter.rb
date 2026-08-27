# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module InteractionCounter
      include StructuredValue

      def self.schema_property_definitions
        {
          end_time: {
            schema_name: "endTime",
            schema_url: "https://schema.org/endTime",
            comment_lines: ["The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          interaction_service: {
            schema_name: "interactionService",
            schema_url: "https://schema.org/interactionService",
            comment_lines: ["The WebSite or SoftwareApplication where the interactions took place."].freeze,
            ranges: ["SoftwareApplication", "WebSite"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          interaction_type: {
            schema_name: "interactionType",
            schema_url: "https://schema.org/interactionType",
            comment_lines: ["The Action representing the type of interaction. For up votes, +1s, etc. use [[LikeAction]]. For down votes use [[DislikeAction]]. Otherwise, use the most specific Action."].freeze,
            ranges: ["Action"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          location: {
            schema_name: "location",
            schema_url: "https://schema.org/location",
            comment_lines: ["The location of, for example, where an event is happening, where an organization is located, or where an action takes place."].freeze,
            ranges: ["Place", "PostalAddress", "Text", "VirtualLocation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_time: {
            schema_name: "startTime",
            schema_url: "https://schema.org/startTime",
            comment_lines: ["The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          user_interaction_count: {
            schema_name: "userInteractionCount",
            schema_url: "https://schema.org/userInteractionCount",
            comment_lines: ["The number of interactions for the CreativeWork using the WebSite or SoftwareApplication."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def end_time
        read_property(:end_time)
      end

      # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def end_time=(value)
        write_property(:end_time, value)
      end

      # The WebSite or SoftwareApplication where the interactions took place.
      def interaction_service
        read_property(:interaction_service)
      end

      # The WebSite or SoftwareApplication where the interactions took place.
      def interaction_service=(value)
        write_property(:interaction_service, value)
      end

      # The Action representing the type of interaction. For up votes, +1s, etc. use [[LikeAction]]. For down votes use [[DislikeAction]]. Otherwise, use the most specific Action.
      def interaction_type
        read_property(:interaction_type)
      end

      # The Action representing the type of interaction. For up votes, +1s, etc. use [[LikeAction]]. For down votes use [[DislikeAction]]. Otherwise, use the most specific Action.
      def interaction_type=(value)
        write_property(:interaction_type, value)
      end

      # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      def location
        read_property(:location)
      end

      # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      def location=(value)
        write_property(:location, value)
      end

      # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def start_time
        read_property(:start_time)
      end

      # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def start_time=(value)
        write_property(:start_time, value)
      end

      # The number of interactions for the CreativeWork using the WebSite or SoftwareApplication.
      def user_interaction_count
        read_property(:user_interaction_count)
      end

      # The number of interactions for the CreativeWork using the WebSite or SoftwareApplication.
      def user_interaction_count=(value)
        write_property(:user_interaction_count, value)
      end
    end
  end
end
