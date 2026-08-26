# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module LegalValueLevel
      include Enumeration

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
