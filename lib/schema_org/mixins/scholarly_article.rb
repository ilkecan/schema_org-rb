module SchemaOrg
  module Mixins
    module ScholarlyArticle
      include Article

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
