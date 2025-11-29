require "active_support/concern"

module SchemaOrg
  module Mixins
    module PoliceStation
      extend ActiveSupport::Concern

      include CivicStructure
      include EmergencyService
    end
  end
end
