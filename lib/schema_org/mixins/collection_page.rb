require "active_support/concern"

module SchemaOrg
  module Mixins
    module CollectionPage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
