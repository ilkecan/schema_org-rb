module SchemaOrg
  module Mixins
    module ReplyAction
      include CommunicateAction

      def self.schema_property_definitions
        {
          :result_comment => {
            schema_name: "resultComment",
            ranges: ["Comment"],
          }.freeze,
        }.freeze
      end

      def result_comment
        read_property(:result_comment)
      end

      def result_comment=(value)
        write_property(:result_comment, value)
      end

    end
  end
end
