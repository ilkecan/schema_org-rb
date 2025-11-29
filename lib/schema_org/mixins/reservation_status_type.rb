require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReservationStatusType
      extend ActiveSupport::Concern

      include StatusEnumeration
    end
  end
end
