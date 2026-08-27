# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MenuSection
      include CreativeWork

      def self.schema_property_definitions
        {
          has_menu_item: {
            schema_name: "hasMenuItem",
            schema_url: "https://schema.org/hasMenuItem",
            comment_lines: ["A food or drink item contained in a menu or menu section."].freeze,
            ranges: ["MenuItem"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_menu_section: {
            schema_name: "hasMenuSection",
            schema_url: "https://schema.org/hasMenuSection",
            comment_lines: ["A subgrouping of the menu (by dishes, course, serving time period, etc.)."].freeze,
            ranges: ["MenuSection"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A food or drink item contained in a menu or menu section.
      def has_menu_item
        read_property(:has_menu_item)
      end

      # A food or drink item contained in a menu or menu section.
      def has_menu_item=(value)
        write_property(:has_menu_item, value)
      end

      # A subgrouping of the menu (by dishes, course, serving time period, etc.).
      def has_menu_section
        read_property(:has_menu_section)
      end

      # A subgrouping of the menu (by dishes, course, serving time period, etc.).
      def has_menu_section=(value)
        write_property(:has_menu_section, value)
      end
    end
  end
end
