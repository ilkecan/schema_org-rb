require "active_support/concern"

module SchemaOrg
  module Mixins
    module AutoDealer
      extend ActiveSupport::Concern

      include AutomotiveBusiness
    end
  end
end
