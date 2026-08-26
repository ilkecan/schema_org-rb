module SchemaOrg
  module Mixins
    module Hostel
      include LodgingBusiness

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
