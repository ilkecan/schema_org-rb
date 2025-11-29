require "active_support/concern"

module SchemaOrg
  module Mixins
    module ParkingFacility
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
