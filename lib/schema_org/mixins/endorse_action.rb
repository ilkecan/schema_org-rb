require "active_support/concern"

module SchemaOrg
  module Mixins
    module EndorseAction
      extend ActiveSupport::Concern

      include ReactAction

      included do
        option :endorsee, optional: true # A sub property of participant. The person/organization being supported.
      end
    end
  end
end
