require "active_support/concern"

module SchemaOrg
  module Mixins
    module Mosque
      extend ActiveSupport::Concern

      include PlaceOfWorship
    end
  end
end
