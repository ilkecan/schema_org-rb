require "active_support/concern"

module SchemaOrg
  module Mixins
    module NGO
      extend ActiveSupport::Concern

      include Organization
    end
  end
end
