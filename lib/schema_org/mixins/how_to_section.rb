module SchemaOrg
  module Mixins
    module HowToSection
      include CreativeWork
      include ItemList
      include ListItem

      def self.schema_property_definitions
        {
          :steps => {
            schema_name: "steps",
            ranges: ["CreativeWork", "ItemList", "Text"],
          }.freeze,
        }.freeze
      end

      def steps
        read_property(:steps)
      end

      def steps=(value)
        write_property(:steps, value)
      end

    end
  end
end
