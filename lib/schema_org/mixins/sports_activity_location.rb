require "active_support/concern"

module SchemaOrg
  module Mixins
    module SportsActivityLocation
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
