# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SchoolDistrict
      include AdministrativeArea

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
