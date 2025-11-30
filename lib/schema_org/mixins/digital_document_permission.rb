require "active_support/concern"

module SchemaOrg
  module Mixins
    module DigitalDocumentPermission
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :grantee, optional: true # The person, organization, contact point, or audience that has been granted this permission.
        option :permission_type, optional: true # The type of permission granted the person, organization, or audience.
      end
    end
  end
end
