# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module UserPlusOnes
      include UserInteraction

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
