require "active_support/concern"

module SchemaOrg
  module Mixins
    module Map
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :map_type, optional: true # Indicates the kind of Map, from the MapCategoryType Enumeration.
      end
    end
  end
end
