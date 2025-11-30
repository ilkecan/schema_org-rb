require "active_support/concern"

module SchemaOrg
  module Mixins
    module PerformAction
      extend ActiveSupport::Concern

      include PlayAction

      included do
        option :entertainment_business, optional: true # A sub property of location. The entertainment business where the action occurred.
      end
    end
  end
end
