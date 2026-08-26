# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Motorcycle
      include Vehicle

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
