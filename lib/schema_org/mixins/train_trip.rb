require "active_support/concern"

module SchemaOrg
  module Mixins
    module TrainTrip
      extend ActiveSupport::Concern

      include Trip

      included do
        option :arrival_platform, optional: true # The platform where the train arrives.
        option :arrival_station, optional: true # The station where the train trip ends.
        option :departure_platform, optional: true # The platform from which the train departs.
        option :departure_station, optional: true # The station from which the train departs.
        option :train_name, optional: true # The name of the train (e.g. The Orient Express).
        option :train_number, optional: true # The unique identifier for the train.
      end
    end
  end
end
