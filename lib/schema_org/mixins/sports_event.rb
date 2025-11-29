require "active_support/concern"

module SchemaOrg
  module Mixins
    module SportsEvent
      extend ActiveSupport::Concern

      include Event

      included do
        option :away_team # The away team in a sports event.
        option :home_team # The home team in a sports event.
        option :referee # An official who watches a game or match closely to enforce the rules and arbitrate on matters arising from the play such as referees, umpires or judges. The name of the effective function can vary according to the sport.
        option :competitor # A competitor in a sports event.
      end
    end
  end
end
