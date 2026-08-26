module SchemaOrg
  module Mixins
    module ChooseAction
      include AssessAction

      def self.schema_property_definitions
        {
          :action_option => {
            schema_name: "actionOption",
            ranges: ["Text", "Thing"],
          }.freeze,
          :option => {
            schema_name: "option",
            ranges: ["Text", "Thing"],
          }.freeze,
        }.freeze
      end

      def action_option
        read_property(:action_option)
      end

      def action_option=(value)
        write_property(:action_option, value)
      end

      def option
        read_property(:option)
      end

      def option=(value)
        write_property(:option, value)
      end

    end
  end
end
