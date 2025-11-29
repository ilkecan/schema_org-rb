require "active_support/concern"

module SchemaOrg
  module Mixins
    module Park
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
