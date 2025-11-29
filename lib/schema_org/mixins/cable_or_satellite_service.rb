require "active_support/concern"

module SchemaOrg
  module Mixins
    module CableOrSatelliteService
      extend ActiveSupport::Concern

      include Service
    end
  end
end
