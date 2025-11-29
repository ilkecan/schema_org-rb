require "active_support/concern"

module SchemaOrg
  module Mixins
    module GolfCourse
      extend ActiveSupport::Concern

      include SportsActivityLocation
    end
  end
end
