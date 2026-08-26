# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ReserveAction
      include PlanAction

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
