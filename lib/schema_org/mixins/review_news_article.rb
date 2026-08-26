# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ReviewNewsArticle
      include CriticReview
      include NewsArticle

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
