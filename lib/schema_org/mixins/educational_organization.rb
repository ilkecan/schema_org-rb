require "active_support/concern"

module SchemaOrg
  module Mixins
    module EducationalOrganization
      extend ActiveSupport::Concern

      include CivicStructure
      include Organization

      included do
        option :alumni # Alumni of an organization.
      end
    end
  end
end
