module SchemaOrg
  module Mixins
    module Answer
      include Comment

      def self.schema_property_definitions
        {
          :parent_item => {
            schema_name: "parentItem",
            ranges: ["Comment", "CreativeWork"],
          }.freeze,
        }.freeze
      end

      def parent_item
        read_property(:parent_item)
      end

      def parent_item=(value)
        write_property(:parent_item, value)
      end

    end
  end
end
