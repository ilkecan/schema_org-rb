require "active_support/concern"

module SchemaOrg
  module Mixins
    module GasStation
      extend ActiveSupport::Concern

      include AutomotiveBusiness
    end
  end
end
