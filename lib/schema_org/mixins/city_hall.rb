# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module CityHall
      include GovernmentBuilding

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
