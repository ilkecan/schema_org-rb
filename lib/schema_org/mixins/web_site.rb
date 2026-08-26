module SchemaOrg
  module Mixins
    module WebSite
      include CreativeWork

      def self.schema_property_definitions
        {
          :issn => {
            schema_name: "issn",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def issn
        read_property(:issn)
      end

      def issn=(value)
        write_property(:issn, value)
      end

    end
  end
end
