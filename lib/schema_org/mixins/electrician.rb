require "active_support/concern"

module SchemaOrg
  module Mixins
    module Electrician
      extend ActiveSupport::Concern

      include HomeAndConstructionBusiness
    end
  end
end
