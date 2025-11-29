require "active_support/concern"

module SchemaOrg
  module Mixins
    module EventStatusType
      extend ActiveSupport::Concern

      include StatusEnumeration
    end
  end
end
