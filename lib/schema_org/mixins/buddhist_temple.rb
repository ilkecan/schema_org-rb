require "active_support/concern"

module SchemaOrg
  module Mixins
    module BuddhistTemple
      extend ActiveSupport::Concern

      include PlaceOfWorship
    end
  end
end
