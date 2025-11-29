require "active_support/concern"

module SchemaOrg
  module Mixins
    module BreadcrumbList
      extend ActiveSupport::Concern

      include ItemList
    end
  end
end
