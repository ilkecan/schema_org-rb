module SchemaOrg
  module Mixins
    module Menu
      include CreativeWork

      def self.schema_property_definitions
        {
          :has_menu_item => {
            schema_name: "hasMenuItem",
            ranges: ["MenuItem"],
          }.freeze,
          :has_menu_section => {
            schema_name: "hasMenuSection",
            ranges: ["MenuSection"],
          }.freeze,
        }.freeze
      end

      def has_menu_item
        read_property(:has_menu_item)
      end

      def has_menu_item=(value)
        write_property(:has_menu_item, value)
      end

      def has_menu_section
        read_property(:has_menu_section)
      end

      def has_menu_section=(value)
        write_property(:has_menu_section, value)
      end

    end
  end
end
