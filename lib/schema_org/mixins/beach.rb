require "active_support/concern"

module SchemaOrg
  module Mixins
    module Beach
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
