module SchemaOrg
  module Mixins
    module WriteAction
      include CreateAction

      def self.schema_property_definitions
        {
          :in_language => {
            schema_name: "inLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :language => {
            schema_name: "language",
            ranges: ["Language"],
          }.freeze,
        }.freeze
      end

      def in_language
        read_property(:in_language)
      end

      def in_language=(value)
        write_property(:in_language, value)
      end

      def language
        read_property(:language)
      end

      def language=(value)
        write_property(:language, value)
      end

    end
  end
end
