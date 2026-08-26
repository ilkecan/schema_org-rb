module SchemaOrg
  module Mixins
    module AllocateAction
      include OrganizeAction

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
