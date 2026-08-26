module SchemaOrg
  module Mixins
    module WebApplication
      include SoftwareApplication

      def self.schema_property_definitions
        {
          :browser_requirements => {
            schema_name: "browserRequirements",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def browser_requirements
        read_property(:browser_requirements)
      end

      def browser_requirements=(value)
        write_property(:browser_requirements, value)
      end

    end
  end
end
