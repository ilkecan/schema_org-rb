# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module FundingAgency
      include Project

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
