require "active_support/concern"

module SchemaOrg
  module Mixins
    module Zoo
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
