module SchemaOrg
  module Mixins
    module ReplaceAction
      include UpdateAction

      def self.schema_property_definitions
        {
          :replacee => {
            schema_name: "replacee",
            ranges: ["Thing"],
          }.freeze,
          :replacer => {
            schema_name: "replacer",
            ranges: ["Thing"],
          }.freeze,
        }.freeze
      end

      def replacee
        read_property(:replacee)
      end

      def replacee=(value)
        write_property(:replacee, value)
      end

      def replacer
        read_property(:replacer)
      end

      def replacer=(value)
        write_property(:replacer, value)
      end

    end
  end
end
