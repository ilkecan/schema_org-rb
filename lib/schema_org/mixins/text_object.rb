require "active_support/concern"

module SchemaOrg
  module Mixins
    module TextObject
      extend ActiveSupport::Concern

      include MediaObject
    end
  end
end
