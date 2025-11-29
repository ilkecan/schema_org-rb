require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
