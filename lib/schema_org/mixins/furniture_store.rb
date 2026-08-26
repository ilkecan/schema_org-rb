# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module FurnitureStore
      include Store

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
