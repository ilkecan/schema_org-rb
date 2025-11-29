require "active_support/concern"

module SchemaOrg
  module Mixins
    module TrainTrip
      extend ActiveSupport::Concern

      include Trip

      included do
        option :arrival_platform # The platform where the train arrives.
        option :arrival_station # The station where the train trip ends.
        option :departure_platform # The platform from which the train departs.
        option :departure_station # The station from which the train departs.
        option :train_name # The name of the train (e.g. The Orient Express).
        option :train_number # The unique identifier for the train.
      end
    end
  end
end
