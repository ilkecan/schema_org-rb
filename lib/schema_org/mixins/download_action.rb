# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module DownloadAction
      include TransferAction

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
