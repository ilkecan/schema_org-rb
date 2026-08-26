module SchemaOrg
  module Mixins
    module AlignmentObject
      include Intangible

      def self.schema_property_definitions
        {
          :alignment_type => {
            schema_name: "alignmentType",
            ranges: ["Text"],
          }.freeze,
          :educational_framework => {
            schema_name: "educationalFramework",
            ranges: ["Text"],
          }.freeze,
          :target_description => {
            schema_name: "targetDescription",
            ranges: ["Text"],
          }.freeze,
          :target_name => {
            schema_name: "targetName",
            ranges: ["Text"],
          }.freeze,
          :target_url => {
            schema_name: "targetUrl",
            ranges: ["URL"],
          }.freeze,
        }.freeze
      end

      def alignment_type
        read_property(:alignment_type)
      end

      def alignment_type=(value)
        write_property(:alignment_type, value)
      end

      def educational_framework
        read_property(:educational_framework)
      end

      def educational_framework=(value)
        write_property(:educational_framework, value)
      end

      def target_description
        read_property(:target_description)
      end

      def target_description=(value)
        write_property(:target_description, value)
      end

      def target_name
        read_property(:target_name)
      end

      def target_name=(value)
        write_property(:target_name, value)
      end

      def target_url
        read_property(:target_url)
      end

      def target_url=(value)
        write_property(:target_url, value)
      end

    end
  end
end
