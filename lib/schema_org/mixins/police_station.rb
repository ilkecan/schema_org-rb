# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PoliceStation
      include CivicStructure
      include EmergencyService

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
