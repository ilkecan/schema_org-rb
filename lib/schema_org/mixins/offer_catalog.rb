require "active_support/concern"

module SchemaOrg
  module Mixins
    module OfferCatalog
      extend ActiveSupport::Concern

      include ItemList
    end
  end
end
