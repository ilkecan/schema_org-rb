require "active_support/concern"

module SchemaOrg
  module Mixins
    module RestrictedDiet
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
