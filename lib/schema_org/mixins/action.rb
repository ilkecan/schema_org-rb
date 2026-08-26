module SchemaOrg
  module Mixins
    module Action
      include Thing

      def self.schema_property_definitions
        {
          :action_process => {
            schema_name: "actionProcess",
            ranges: ["HowTo"],
          }.freeze,
          :action_status => {
            schema_name: "actionStatus",
            ranges: ["ActionStatusType"],
          }.freeze,
          :agent => {
            schema_name: "agent",
            ranges: ["Organization", "Person"],
          }.freeze,
          :end_time => {
            schema_name: "endTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :error => {
            schema_name: "error",
            ranges: ["Thing"],
          }.freeze,
          :instrument => {
            schema_name: "instrument",
            ranges: ["Thing"],
          }.freeze,
          :location => {
            schema_name: "location",
            ranges: ["Place", "PostalAddress", "Text"],
          }.freeze,
          :object => {
            schema_name: "object",
            ranges: ["Thing"],
          }.freeze,
          :participant => {
            schema_name: "participant",
            ranges: ["Organization", "Person"],
          }.freeze,
          :result => {
            schema_name: "result",
            ranges: ["Thing"],
          }.freeze,
          :start_time => {
            schema_name: "startTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :target => {
            schema_name: "target",
            ranges: ["EntryPoint", "URL"],
          }.freeze,
        }.freeze
      end

      def action_process
        read_property(:action_process)
      end

      def action_process=(value)
        write_property(:action_process, value)
      end

      def action_status
        read_property(:action_status)
      end

      def action_status=(value)
        write_property(:action_status, value)
      end

      def agent
        read_property(:agent)
      end

      def agent=(value)
        write_property(:agent, value)
      end

      def end_time
        read_property(:end_time)
      end

      def end_time=(value)
        write_property(:end_time, value)
      end

      def error
        read_property(:error)
      end

      def error=(value)
        write_property(:error, value)
      end

      def instrument
        read_property(:instrument)
      end

      def instrument=(value)
        write_property(:instrument, value)
      end

      def location
        read_property(:location)
      end

      def location=(value)
        write_property(:location, value)
      end

      def object
        read_property(:object)
      end

      def object=(value)
        write_property(:object, value)
      end

      def participant
        read_property(:participant)
      end

      def participant=(value)
        write_property(:participant, value)
      end

      def result
        read_property(:result)
      end

      def result=(value)
        write_property(:result, value)
      end

      def start_time
        read_property(:start_time)
      end

      def start_time=(value)
        write_property(:start_time, value)
      end

      def target
        read_property(:target)
      end

      def target=(value)
        write_property(:target, value)
      end

    end
  end
end
