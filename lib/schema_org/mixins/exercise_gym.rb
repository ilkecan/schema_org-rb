require "active_support/concern"

module SchemaOrg
  module Mixins
    module ExerciseGym
      extend ActiveSupport::Concern

      include SportsActivityLocation
    end
  end
end
