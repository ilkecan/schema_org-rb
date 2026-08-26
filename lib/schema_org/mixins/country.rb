module SchemaOrg
  module Mixins
    module Country
      include AdministrativeArea

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
