module SchemaOrg
  module Mixins
    module EndorseAction
      include ReactAction

      def self.schema_property_definitions
        {
          :endorsee => {
            schema_name: "endorsee",
            ranges: ["Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def endorsee
        read_property(:endorsee)
      end

      def endorsee=(value)
        write_property(:endorsee, value)
      end

    end
  end
end
