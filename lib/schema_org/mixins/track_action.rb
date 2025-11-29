require "active_support/concern"

module SchemaOrg
  module Mixins
    module TrackAction
      extend ActiveSupport::Concern

      include FindAction

      included do
        option :delivery_method # A sub property of instrument. The method of delivery.
      end
    end
  end
end
