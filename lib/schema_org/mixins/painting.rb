require "active_support/concern"

module SchemaOrg
  module Mixins
    module Painting
      extend ActiveSupport::Concern

      include CreativeWork
    end
  end
end
