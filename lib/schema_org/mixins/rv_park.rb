require "active_support/concern"

module SchemaOrg
  module Mixins
    module RVPark
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
