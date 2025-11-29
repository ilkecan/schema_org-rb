require "active_support/concern"

module SchemaOrg
  module Mixins
    module BowlingAlley
      extend ActiveSupport::Concern

      include SportsActivityLocation
    end
  end
end
