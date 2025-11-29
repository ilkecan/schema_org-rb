require "active_support/concern"

module SchemaOrg
  module Mixins
    module MediaSubscription
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :authenticator # The Organization responsible for authenticating the user's subscription. For example, many media apps require a cable/satellite provider to authenticate your subscription before playing media.
        option :expects_acceptance_of # An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it.
      end
    end
  end
end
