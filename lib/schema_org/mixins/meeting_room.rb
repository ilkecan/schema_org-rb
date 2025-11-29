require "active_support/concern"

module SchemaOrg
  module Mixins
    module MeetingRoom
      extend ActiveSupport::Concern

      include Room
    end
  end
end
