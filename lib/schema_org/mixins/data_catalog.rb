require "active_support/concern"

module SchemaOrg
  module Mixins
    module DataCatalog
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :dataset # A dataset contained in this catalog. Inverse-property: `included_in_data_catalog`.
      end
    end
  end
end
