require "active_support/concern"

module SchemaOrg
  module Mixins
    module Cooperative
      extend ActiveSupport::Concern

      include Organization
    end
  end
end
