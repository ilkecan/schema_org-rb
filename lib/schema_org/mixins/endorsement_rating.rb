module SchemaOrg
  module Mixins
    module EndorsementRating
      include Rating

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
