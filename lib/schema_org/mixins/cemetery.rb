require "active_support/concern"

module SchemaOrg
  module Mixins
    module Cemetery
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
