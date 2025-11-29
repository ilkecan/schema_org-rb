require "active_support/concern"

module SchemaOrg
  module Mixins
    module OrganizeAction
      extend ActiveSupport::Concern

      include Action
    end
  end
end
