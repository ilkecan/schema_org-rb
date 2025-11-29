require "active_support/concern"

module SchemaOrg
  module Mixins
    module EducationEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
