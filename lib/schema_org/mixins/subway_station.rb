require "active_support/concern"

module SchemaOrg
  module Mixins
    module SubwayStation
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
