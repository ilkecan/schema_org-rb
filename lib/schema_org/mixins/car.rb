require "active_support/concern"

module SchemaOrg
  module Mixins
    module Car
      extend ActiveSupport::Concern

      include Vehicle
    end
  end
end
