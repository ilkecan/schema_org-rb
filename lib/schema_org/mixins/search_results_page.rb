require "active_support/concern"

module SchemaOrg
  module Mixins
    module SearchResultsPage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
