require "active_support/concern"

module SchemaOrg
  module Mixins
    module AllocateAction
      extend ActiveSupport::Concern

      include OrganizeAction
    end
  end
end
