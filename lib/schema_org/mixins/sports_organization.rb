module SchemaOrg
  module Mixins
    module SportsOrganization
      include Organization

      def self.schema_property_definitions
        {
          :sport => {
            schema_name: "sport",
            ranges: ["Text", "URL"],
          }.freeze,
        }.freeze
      end

      def sport
        read_property(:sport)
      end

      def sport=(value)
        write_property(:sport, value)
      end

    end
  end
end
