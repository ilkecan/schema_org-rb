require "active_support/concern"

module SchemaOrg
  module Mixins
    module PlaceOfWorship
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
