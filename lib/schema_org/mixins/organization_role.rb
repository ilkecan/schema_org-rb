module SchemaOrg
  module Mixins
    module OrganizationRole
      include Role

      def self.schema_property_definitions
        {
          :numbered_position => {
            schema_name: "numberedPosition",
            ranges: ["Number"],
          }.freeze,
        }.freeze
      end

      def numbered_position
        read_property(:numbered_position)
      end

      def numbered_position=(value)
        write_property(:numbered_position, value)
      end

    end
  end
end
