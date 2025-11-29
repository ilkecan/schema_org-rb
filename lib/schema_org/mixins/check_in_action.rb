require "active_support/concern"

module SchemaOrg
  module Mixins
    module CheckInAction
      extend ActiveSupport::Concern

      include CommunicateAction
    end
  end
end
