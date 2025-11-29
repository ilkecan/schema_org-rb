require "active_support/concern"

module SchemaOrg
  module Mixins
    module ItemListOrderType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
