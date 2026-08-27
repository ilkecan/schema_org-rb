# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Action
      include Thing

      def self.schema_property_definitions
        {
          action_process: {
            schema_name: "actionProcess",
            schema_url: "https://schema.org/actionProcess",
            comment_lines: ["Description of the process by which the action was performed."].freeze,
            ranges: ["HowTo"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          action_status: {
            schema_name: "actionStatus",
            schema_url: "https://schema.org/actionStatus",
            comment_lines: ["Indicates the current disposition of the Action."].freeze,
            ranges: ["ActionStatusType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          agent: {
            schema_name: "agent",
            schema_url: "https://schema.org/agent",
            comment_lines: ["The direct performer or driver of the action (animate or inanimate). E.g. *John* wrote a book."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          error: {
            schema_name: "error",
            schema_url: "https://schema.org/error",
            comment_lines: ["For failed actions, more information on the cause of the failure. Consider using the Error type."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          instrument: {
            schema_name: "instrument",
            schema_url: "https://schema.org/instrument",
            comment_lines: ["The object that helped the agent perform the action. E.g. John wrote a book with *a pen*."].freeze,
            ranges: ["Thing"].freeze,
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
          object: {
            schema_name: "object",
            schema_url: "https://schema.org/object",
            comment_lines: ["The object upon which the action is carried out, whose state is kept intact or changed. Also known as the semantic roles patient, affected or undergoer (which change their state) or theme (which doesn't). E.g. John read *a book*."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          participant: {
            schema_name: "participant",
            schema_url: "https://schema.org/participant",
            comment_lines: ["Other co-agents that participated in the action indirectly. E.g. John wrote a book with *Steve*."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provider: {
            schema_name: "provider",
            schema_url: "https://schema.org/provider",
            comment_lines: ["The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "carrier"
          }.freeze,
          result: {
            schema_name: "result",
            schema_url: "https://schema.org/result",
            comment_lines: ["The result produced in the action. E.g. John wrote *a book*."].freeze,
            ranges: ["Thing"].freeze,
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
          target: {
            schema_name: "target",
            schema_url: "https://schema.org/target",
            comment_lines: ["Indicates a target EntryPoint, or url, for an Action."].freeze,
            ranges: ["EntryPoint", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Description of the process by which the action was performed.
      def action_process
        read_property(:action_process)
      end

      # Description of the process by which the action was performed.
      def action_process=(value)
        write_property(:action_process, value)
      end

      # Indicates the current disposition of the Action.
      def action_status
        read_property(:action_status)
      end

      # Indicates the current disposition of the Action.
      def action_status=(value)
        write_property(:action_status, value)
      end

      # The direct performer or driver of the action (animate or inanimate). E.g. *John* wrote a book.
      def agent
        read_property(:agent)
      end

      # The direct performer or driver of the action (animate or inanimate). E.g. *John* wrote a book.
      def agent=(value)
        write_property(:agent, value)
      end

      # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def end_time
        read_property(:end_time)
      end

      # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def end_time=(value)
        write_property(:end_time, value)
      end

      # For failed actions, more information on the cause of the failure. Consider using the Error type.
      def error
        read_property(:error)
      end

      # For failed actions, more information on the cause of the failure. Consider using the Error type.
      def error=(value)
        write_property(:error, value)
      end

      # The object that helped the agent perform the action. E.g. John wrote a book with *a pen*.
      def instrument
        read_property(:instrument)
      end

      # The object that helped the agent perform the action. E.g. John wrote a book with *a pen*.
      def instrument=(value)
        write_property(:instrument, value)
      end

      # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      def location
        read_property(:location)
      end

      # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      def location=(value)
        write_property(:location, value)
      end

      # The object upon which the action is carried out, whose state is kept intact or changed. Also known as the semantic roles patient, affected or undergoer (which change their state) or theme (which doesn't). E.g. John read *a book*.
      def object
        read_property(:object)
      end

      # The object upon which the action is carried out, whose state is kept intact or changed. Also known as the semantic roles patient, affected or undergoer (which change their state) or theme (which doesn't). E.g. John read *a book*.
      def object=(value)
        write_property(:object, value)
      end

      # Other co-agents that participated in the action indirectly. E.g. John wrote a book with *Steve*.
      def participant
        read_property(:participant)
      end

      # Other co-agents that participated in the action indirectly. E.g. John wrote a book with *Steve*.
      def participant=(value)
        write_property(:participant, value)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider
        read_property(:provider)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider=(value)
        write_property(:provider, value)
      end

      # The result produced in the action. E.g. John wrote *a book*.
      def result
        read_property(:result)
      end

      # The result produced in the action. E.g. John wrote *a book*.
      def result=(value)
        write_property(:result, value)
      end

      # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def start_time
        read_property(:start_time)
      end

      # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def start_time=(value)
        write_property(:start_time, value)
      end

      # Indicates a target EntryPoint, or url, for an Action.
      def target
        read_property(:target)
      end

      # Indicates a target EntryPoint, or url, for an Action.
      def target=(value)
        write_property(:target, value)
      end
    end
  end
end
