require "active_support/concern"

module SchemaOrg
  module Mixins
    module TrackAction
      extend ActiveSupport::Concern

      include FindAction

      included do
        option :delivery_method, optional: true # A sub property of instrument. The method of delivery.
      end
    end
  end
end
