require "active_support/concern"

module SchemaOrg
  module Mixins
    module TravelAgency
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
