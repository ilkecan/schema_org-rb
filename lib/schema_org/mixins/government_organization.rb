require "active_support/concern"

module SchemaOrg
  module Mixins
    module GovernmentOrganization
      extend ActiveSupport::Concern

      include Organization
    end
  end
end
