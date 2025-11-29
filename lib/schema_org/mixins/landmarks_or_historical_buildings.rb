require "active_support/concern"

module SchemaOrg
  module Mixins
    module LandmarksOrHistoricalBuildings
      extend ActiveSupport::Concern

      include Place
    end
  end
end
