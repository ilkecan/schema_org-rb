require "active_support/concern"

module SchemaOrg
  module Mixins
    module SportsTeam
      extend ActiveSupport::Concern

      include SportsOrganization

      included do
        option :athlete # A person that acts as performing member of a sports team; a player as opposed to a coach.
        option :coach # A person that acts in a coaching role for a sports team.
      end
    end
  end
end
