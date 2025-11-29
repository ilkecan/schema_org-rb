require "active_support/concern"

module SchemaOrg
  module Mixins
    module Campground
      extend ActiveSupport::Concern

      include CivicStructure
      include LodgingBusiness
    end
  end
end
