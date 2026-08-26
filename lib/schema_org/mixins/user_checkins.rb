# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module UserCheckins
      include UserInteraction

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
