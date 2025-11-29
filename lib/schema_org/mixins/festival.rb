require "active_support/concern"

module SchemaOrg
  module Mixins
    module Festival
      extend ActiveSupport::Concern

      include Event
    end
  end
end
