module SchemaOrg
  module Mixins
    module ProductModel
      include Product

      def self.schema_property_definitions
        {
          :is_variant_of => {
            schema_name: "isVariantOf",
            ranges: ["ProductModel"],
          }.freeze,
          :predecessor_of => {
            schema_name: "predecessorOf",
            ranges: ["ProductModel"],
          }.freeze,
          :successor_of => {
            schema_name: "successorOf",
            ranges: ["ProductModel"],
          }.freeze,
        }.freeze
      end

      def is_variant_of
        read_property(:is_variant_of)
      end

      def is_variant_of=(value)
        write_property(:is_variant_of, value)
      end

      def predecessor_of
        read_property(:predecessor_of)
      end

      def predecessor_of=(value)
        write_property(:predecessor_of, value)
      end

      def successor_of
        read_property(:successor_of)
      end

      def successor_of=(value)
        write_property(:successor_of, value)
      end

    end
  end
end
