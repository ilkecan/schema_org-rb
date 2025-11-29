require "active_support/concern"

module SchemaOrg
  module Mixins
    module DataCatalog
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :dataset # A dataset contained in this catalog.
      end
    end
  end
end
