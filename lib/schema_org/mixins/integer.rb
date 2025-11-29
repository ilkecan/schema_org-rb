require "active_support/concern"

module SchemaOrg
  module Mixins
    module Integer
      extend ActiveSupport::Concern

      include Number
    end
  end
end
