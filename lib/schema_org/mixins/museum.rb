require "active_support/concern"

module SchemaOrg
  module Mixins
    module Museum
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
