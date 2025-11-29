require "active_support/concern"

module SchemaOrg
  module Mixins
    module Store
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
