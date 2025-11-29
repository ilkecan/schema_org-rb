require "active_support/concern"

module SchemaOrg
  module Mixins
    module Crematorium
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
