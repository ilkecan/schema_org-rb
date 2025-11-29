require "active_support/concern"

module SchemaOrg
  module Mixins
    module Float
      extend ActiveSupport::Concern

      include Number
    end
  end
end
