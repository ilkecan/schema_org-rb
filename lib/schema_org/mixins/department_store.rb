require "active_support/concern"

module SchemaOrg
  module Mixins
    module DepartmentStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
