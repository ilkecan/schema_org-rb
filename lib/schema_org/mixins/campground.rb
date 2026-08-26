module SchemaOrg
  module Mixins
    module Campground
      include CivicStructure
      include LodgingBusiness

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
