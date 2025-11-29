require "active_support/concern"

module SchemaOrg
  module Mixins
    module Playground
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
