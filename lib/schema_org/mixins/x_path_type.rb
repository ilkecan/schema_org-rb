# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module XPathType
      include Text

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
