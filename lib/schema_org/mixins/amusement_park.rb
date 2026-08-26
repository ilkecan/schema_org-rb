# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module AmusementPark
      include EntertainmentBusiness

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
