# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Conversation
      include CreativeWork

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
