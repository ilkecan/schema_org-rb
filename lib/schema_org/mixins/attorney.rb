module SchemaOrg
  module Mixins
    module Attorney
      include LegalService

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
