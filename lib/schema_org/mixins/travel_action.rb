require "active_support/concern"

module SchemaOrg
  module Mixins
    module TravelAction
      extend ActiveSupport::Concern

      include MoveAction

      included do
        option :distance, optional: true # The distance travelled, e.g. exercising or travelling.
      end
    end
  end
end
