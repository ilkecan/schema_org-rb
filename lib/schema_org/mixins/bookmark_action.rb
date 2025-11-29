require "active_support/concern"

module SchemaOrg
  module Mixins
    module BookmarkAction
      extend ActiveSupport::Concern

      include OrganizeAction
    end
  end
end
