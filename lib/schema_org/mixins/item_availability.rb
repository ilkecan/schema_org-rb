require "active_support/concern"

module SchemaOrg
  module Mixins
    module ItemAvailability
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
