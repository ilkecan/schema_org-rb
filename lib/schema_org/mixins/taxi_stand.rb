require "active_support/concern"

module SchemaOrg
  module Mixins
    module TaxiStand
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
