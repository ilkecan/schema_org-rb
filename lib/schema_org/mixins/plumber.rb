require "active_support/concern"

module SchemaOrg
  module Mixins
    module Plumber
      extend ActiveSupport::Concern

      include HomeAndConstructionBusiness
    end
  end
end
