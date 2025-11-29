require "active_support/concern"

module SchemaOrg
  module Mixins
    module Church
      extend ActiveSupport::Concern

      include PlaceOfWorship
    end
  end
end
