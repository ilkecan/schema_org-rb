require "active_support/concern"

module SchemaOrg
  module Mixins
    module EngineSpecification
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :fuel_type # The type of fuel suitable for the engine or engines of the vehicle. If the vehicle has only one engine, this property can be attached directly to the vehicle.
      end
    end
  end
end
