require "active_support/concern"

module SchemaOrg
  module Mixins
    module Library
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
