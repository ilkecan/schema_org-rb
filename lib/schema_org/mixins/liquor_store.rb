require "active_support/concern"

module SchemaOrg
  module Mixins
    module LiquorStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
