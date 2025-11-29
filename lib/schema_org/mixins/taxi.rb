require "active_support/concern"

module SchemaOrg
  module Mixins
    module Taxi
      extend ActiveSupport::Concern

      include Service
    end
  end
end
