require "active_support/concern"

module SchemaOrg
  module Mixins
    module Embassy
      extend ActiveSupport::Concern

      include GovernmentBuilding
    end
  end
end
