require "active_support/concern"

module SchemaOrg
  module Mixins
    module AutomotiveBusiness
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
