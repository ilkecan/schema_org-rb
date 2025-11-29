require "active_support/concern"

module SchemaOrg
  module Mixins
    module AutoRental
      extend ActiveSupport::Concern

      include AutomotiveBusiness
    end
  end
end
