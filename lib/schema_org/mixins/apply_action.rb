require "active_support/concern"

module SchemaOrg
  module Mixins
    module ApplyAction
      extend ActiveSupport::Concern

      include OrganizeAction
    end
  end
end
