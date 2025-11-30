require "active_support/concern"

module SchemaOrg
  module Mixins
    module SearchAction
      extend ActiveSupport::Concern

      include Action

      included do
        option :query, optional: true # A sub property of instrument. The query used on this action.
      end
    end
  end
end
