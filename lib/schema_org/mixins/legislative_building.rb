require "active_support/concern"

module SchemaOrg
  module Mixins
    module LegislativeBuilding
      extend ActiveSupport::Concern

      include GovernmentBuilding
    end
  end
end
