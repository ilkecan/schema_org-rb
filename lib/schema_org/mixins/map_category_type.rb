require "active_support/concern"

module SchemaOrg
  module Mixins
    module MapCategoryType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
