require "active_support/concern"

module SchemaOrg
  module Mixins
    module Synagogue
      extend ActiveSupport::Concern

      include PlaceOfWorship
    end
  end
end
