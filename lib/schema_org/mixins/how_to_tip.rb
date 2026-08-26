module SchemaOrg
  module Mixins
    module HowToTip
      include CreativeWork
      include ListItem

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
