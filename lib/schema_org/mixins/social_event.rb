require "active_support/concern"

module SchemaOrg
  module Mixins
    module SocialEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
