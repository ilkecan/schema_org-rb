require "active_support/concern"

module SchemaOrg
  module Mixins
    module EducationalOrganization
      extend ActiveSupport::Concern

      include CivicStructure
      include Organization

      included do
        option :alumni # Alumni of an organization. Inverse-property: `alumni_of`.
      end
    end
  end
end
