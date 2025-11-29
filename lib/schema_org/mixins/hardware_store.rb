require "active_support/concern"

module SchemaOrg
  module Mixins
    module HardwareStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
