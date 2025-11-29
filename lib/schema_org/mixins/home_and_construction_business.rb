require "active_support/concern"

module SchemaOrg
  module Mixins
    module HomeAndConstructionBusiness
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
