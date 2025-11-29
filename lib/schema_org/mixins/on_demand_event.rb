require "active_support/concern"

module SchemaOrg
  module Mixins
    module OnDemandEvent
      extend ActiveSupport::Concern

      include PublicationEvent
    end
  end
end
