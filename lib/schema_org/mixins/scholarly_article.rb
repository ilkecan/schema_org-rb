require "active_support/concern"

module SchemaOrg
  module Mixins
    module ScholarlyArticle
      extend ActiveSupport::Concern

      include Article
    end
  end
end
