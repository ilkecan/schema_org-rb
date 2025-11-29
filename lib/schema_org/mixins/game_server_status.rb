require "active_support/concern"

module SchemaOrg
  module Mixins
    module GameServerStatus
      extend ActiveSupport::Concern

      include StatusEnumeration
    end
  end
end
