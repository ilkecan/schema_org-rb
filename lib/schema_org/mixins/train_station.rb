require "active_support/concern"

module SchemaOrg
  module Mixins
    module TrainStation
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
