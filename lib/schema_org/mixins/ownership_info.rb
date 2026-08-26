module SchemaOrg
  module Mixins
    module OwnershipInfo
      include StructuredValue

      def self.schema_property_definitions
        {
          :acquired_from => {
            schema_name: "acquiredFrom",
            ranges: ["Organization", "Person"],
          }.freeze,
          :owned_from => {
            schema_name: "ownedFrom",
            ranges: ["DateTime"],
          }.freeze,
          :owned_through => {
            schema_name: "ownedThrough",
            ranges: ["DateTime"],
          }.freeze,
          :type_of_good => {
            schema_name: "typeOfGood",
            ranges: ["Product", "Service"],
          }.freeze,
        }.freeze
      end

      def acquired_from
        read_property(:acquired_from)
      end

      def acquired_from=(value)
        write_property(:acquired_from, value)
      end

      def owned_from
        read_property(:owned_from)
      end

      def owned_from=(value)
        write_property(:owned_from, value)
      end

      def owned_through
        read_property(:owned_through)
      end

      def owned_through=(value)
        write_property(:owned_through, value)
      end

      def type_of_good
        read_property(:type_of_good)
      end

      def type_of_good=(value)
        write_property(:type_of_good, value)
      end

    end
  end
end
