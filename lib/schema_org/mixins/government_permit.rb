require "active_support/concern"

module SchemaOrg
  module Mixins
    module GovernmentPermit
      extend ActiveSupport::Concern

      include Permit
    end
  end
end
