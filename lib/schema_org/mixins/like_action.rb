require "active_support/concern"

module SchemaOrg
  module Mixins
    module LikeAction
      extend ActiveSupport::Concern

      include ReactAction
    end
  end
end
