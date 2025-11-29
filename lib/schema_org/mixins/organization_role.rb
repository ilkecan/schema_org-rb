require "active_support/concern"

module SchemaOrg
  module Mixins
    module OrganizationRole
      extend ActiveSupport::Concern

      include Role

      included do
        option :numbered_position # A number associated with a role in an organization, for example, the number on an athlete's jersey.
      end
    end
  end
end
