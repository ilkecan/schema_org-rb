# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module AutoPartsStore
      include AutomotiveBusiness
      include Store

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
