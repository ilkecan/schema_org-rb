require "active_support/concern"

module SchemaOrg
  module Mixins
    module Preschool
      extend ActiveSupport::Concern

      include EducationalOrganization
    end
  end
end
