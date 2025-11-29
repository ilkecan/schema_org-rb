require "active_support/concern"

module SchemaOrg
  module Mixins
    module ComputerStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
