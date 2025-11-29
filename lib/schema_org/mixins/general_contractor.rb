require "active_support/concern"

module SchemaOrg
  module Mixins
    module GeneralContractor
      extend ActiveSupport::Concern

      include HomeAndConstructionBusiness
    end
  end
end
