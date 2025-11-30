require "active_support/concern"

module SchemaOrg
  module Mixins
    module SportsTeam
      extend ActiveSupport::Concern

      include SportsOrganization

      included do
        option :athlete, optional: true # A person that acts as performing member of a sports team; a player as opposed to a coach.
        option :coach, optional: true # A person that acts in a coaching role for a sports team.
      end
    end
  end
end
