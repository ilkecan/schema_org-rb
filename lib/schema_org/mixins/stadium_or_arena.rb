require "active_support/concern"

module SchemaOrg
  module Mixins
    module StadiumOrArena
      extend ActiveSupport::Concern

      include CivicStructure
      include SportsActivityLocation
    end
  end
end
