require "active_support/concern"

module SchemaOrg
  module Mixins
    module BusStation
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
