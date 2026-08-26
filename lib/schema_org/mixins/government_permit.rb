# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module GovernmentPermit
      include Permit

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
