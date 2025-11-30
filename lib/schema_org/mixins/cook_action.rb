require "active_support/concern"

module SchemaOrg
  module Mixins
    module CookAction
      extend ActiveSupport::Concern

      include CreateAction

      included do
        option :food_establishment, optional: true # A sub property of location. The specific food establishment where the action occurred.
        option :food_event, optional: true # A sub property of location. The specific food event where the action occurred.
        option :recipe, optional: true # A sub property of instrument. The recipe/instructions used to perform the action.
      end
    end
  end
end
