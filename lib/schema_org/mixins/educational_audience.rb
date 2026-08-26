module SchemaOrg
  module Mixins
    module EducationalAudience
      include Audience

      def self.schema_property_definitions
        {
          :educational_role => {
            schema_name: "educationalRole",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def educational_role
        read_property(:educational_role)
      end

      def educational_role=(value)
        write_property(:educational_role, value)
      end

    end
  end
end
