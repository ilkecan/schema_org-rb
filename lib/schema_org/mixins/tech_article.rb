module SchemaOrg
  module Mixins
    module TechArticle
      include Article

      def self.schema_property_definitions
        {
          :dependencies => {
            schema_name: "dependencies",
            ranges: ["Text"],
          }.freeze,
          :proficiency_level => {
            schema_name: "proficiencyLevel",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def dependencies
        read_property(:dependencies)
      end

      def dependencies=(value)
        write_property(:dependencies, value)
      end

      def proficiency_level
        read_property(:proficiency_level)
      end

      def proficiency_level=(value)
        write_property(:proficiency_level, value)
      end

    end
  end
end
