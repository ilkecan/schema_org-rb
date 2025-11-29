require "active_support/concern"

module SchemaOrg
  module Mixins
    module TechArticle
      extend ActiveSupport::Concern

      include Article

      included do
        option :dependencies # Prerequisites needed to fulfill steps in article.
        option :proficiency_level # Proficiency needed for this content; expected values: 'Beginner', 'Expert'.
      end
    end
  end
end
