require "active_support/concern"

module SchemaOrg
  module Mixins
    module OutletStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
