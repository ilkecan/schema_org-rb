module SchemaOrg
  module Mixins
    module HowToStep
      include CreativeWork
      include ItemList
      include ListItem

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
