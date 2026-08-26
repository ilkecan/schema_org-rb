# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module AutoBodyShop
      include AutomotiveBusiness

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
