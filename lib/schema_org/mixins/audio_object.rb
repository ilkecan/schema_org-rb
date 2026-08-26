module SchemaOrg
  module Mixins
    module AudioObject
      include MediaObject

      def self.schema_property_definitions
        {
          :caption => {
            schema_name: "caption",
            ranges: ["MediaObject", "Text"],
          }.freeze,
          :transcript => {
            schema_name: "transcript",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def caption
        read_property(:caption)
      end

      def caption=(value)
        write_property(:caption, value)
      end

      def transcript
        read_property(:transcript)
      end

      def transcript=(value)
        write_property(:transcript, value)
      end

    end
  end
end
