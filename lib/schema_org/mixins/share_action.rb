require "active_support/concern"

module SchemaOrg
  module Mixins
    module ShareAction
      extend ActiveSupport::Concern

      include CommunicateAction
    end
  end
end
