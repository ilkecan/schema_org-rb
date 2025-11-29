require "active_support/concern"

module SchemaOrg
  module Mixins
    module AutoBodyShop
      extend ActiveSupport::Concern

      include AutomotiveBusiness
    end
  end
end
