require "active_support/concern"

module SchemaOrg
  module Mixins
    module SkiResort
      extend ActiveSupport::Concern

      include Resort
      include SportsActivityLocation
    end
  end
end
