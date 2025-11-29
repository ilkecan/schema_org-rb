require "active_support/concern"

module SchemaOrg
  module Mixins
    module LiteraryEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
