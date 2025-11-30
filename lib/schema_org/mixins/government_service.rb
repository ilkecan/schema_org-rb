require "active_support/concern"

module SchemaOrg
  module Mixins
    module GovernmentService
      extend ActiveSupport::Concern

      include Service

      included do
        option :service_operator, optional: true # The operating organization, if different from the provider.  This enables the representation of services that are provided by an organization, but operated by another organization like a subcontractor.
      end
    end
  end
end
