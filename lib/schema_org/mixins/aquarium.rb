require "active_support/concern"

module SchemaOrg
  module Mixins
    module Aquarium
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
