require "active_support/concern"

module SchemaOrg
  module Mixins
    module WantAction
      extend ActiveSupport::Concern

      include ReactAction
    end
  end
end
