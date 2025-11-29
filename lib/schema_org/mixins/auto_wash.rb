require "active_support/concern"

module SchemaOrg
  module Mixins
    module AutoWash
      extend ActiveSupport::Concern

      include AutomotiveBusiness
    end
  end
end
