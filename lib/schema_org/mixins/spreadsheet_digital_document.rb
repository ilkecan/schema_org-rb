# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SpreadsheetDigitalDocument
      include DigitalDocument

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
