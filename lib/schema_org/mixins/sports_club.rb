# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SportsClub
      include SportsActivityLocation

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
