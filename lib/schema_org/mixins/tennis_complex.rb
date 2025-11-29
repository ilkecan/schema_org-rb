require "active_support/concern"

module SchemaOrg
  module Mixins
    module TennisComplex
      extend ActiveSupport::Concern

      include SportsActivityLocation
    end
  end
end
