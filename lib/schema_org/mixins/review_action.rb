module SchemaOrg
  module Mixins
    module ReviewAction
      include AssessAction

      def self.schema_property_definitions
        {
          :result_review => {
            schema_name: "resultReview",
            ranges: ["Review"],
          }.freeze,
        }.freeze
      end

      def result_review
        read_property(:result_review)
      end

      def result_review=(value)
        write_property(:result_review, value)
      end

    end
  end
end
