require "active_support/concern"

module SchemaOrg
  module Mixins
    module Locksmith
      extend ActiveSupport::Concern

      include HomeAndConstructionBusiness
    end
  end
end
