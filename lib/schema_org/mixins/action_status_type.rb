require "active_support/concern"

module SchemaOrg
  module Mixins
    module ActionStatusType
      extend ActiveSupport::Concern

      include StatusEnumeration
    end
  end
end
