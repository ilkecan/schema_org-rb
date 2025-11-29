require "active_support/concern"

module SchemaOrg
  module Mixins
    module DefenceEstablishment
      extend ActiveSupport::Concern

      include GovernmentBuilding
    end
  end
end
