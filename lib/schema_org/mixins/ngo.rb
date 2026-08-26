# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module NGO
      include Organization

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
