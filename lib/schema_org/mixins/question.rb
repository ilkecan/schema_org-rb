module SchemaOrg
  module Mixins
    module Question
      include Comment

      def self.schema_property_definitions
        {
          :accepted_answer => {
            schema_name: "acceptedAnswer",
            ranges: ["Answer", "ItemList"],
          }.freeze,
          :answer_count => {
            schema_name: "answerCount",
            ranges: ["Integer"],
          }.freeze,
          :parent_item => {
            schema_name: "parentItem",
            ranges: ["Comment", "CreativeWork"],
          }.freeze,
          :suggested_answer => {
            schema_name: "suggestedAnswer",
            ranges: ["Answer", "ItemList"],
          }.freeze,
        }.freeze
      end

      def accepted_answer
        read_property(:accepted_answer)
      end

      def accepted_answer=(value)
        write_property(:accepted_answer, value)
      end

      def answer_count
        read_property(:answer_count)
      end

      def answer_count=(value)
        write_property(:answer_count, value)
      end

      def parent_item
        read_property(:parent_item)
      end

      def parent_item=(value)
        write_property(:parent_item, value)
      end

      def suggested_answer
        read_property(:suggested_answer)
      end

      def suggested_answer=(value)
        write_property(:suggested_answer, value)
      end

    end
  end
end
