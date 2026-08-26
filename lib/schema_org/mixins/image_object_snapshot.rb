# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ImageObjectSnapshot
      include ImageObject

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
