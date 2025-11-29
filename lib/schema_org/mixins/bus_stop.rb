require "active_support/concern"

module SchemaOrg
  module Mixins
    module BusStop
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
