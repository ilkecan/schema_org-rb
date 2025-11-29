require "active_support/concern"

module SchemaOrg
  module Mixins
    module ChildCare
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
