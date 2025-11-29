require "active_support/concern"

module SchemaOrg
  module Mixins
    module Courthouse
      extend ActiveSupport::Concern

      include GovernmentBuilding
    end
  end
end
