module SchemaOrg
  module Mixins
    module AskAction
      include CommunicateAction

      def self.schema_property_definitions
        {
          :question => {
            schema_name: "question",
            ranges: ["Question"],
          }.freeze,
        }.freeze
      end

      def question
        read_property(:question)
      end

      def question=(value)
        write_property(:question, value)
      end

    end
  end
end
