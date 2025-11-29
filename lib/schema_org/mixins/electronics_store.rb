require "active_support/concern"

module SchemaOrg
  module Mixins
    module ElectronicsStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
