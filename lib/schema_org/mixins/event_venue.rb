require "active_support/concern"

module SchemaOrg
  module Mixins
    module EventVenue
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
