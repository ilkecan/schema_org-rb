require "active_support/concern"

module SchemaOrg
  module Mixins
    module CollegeOrUniversity
      extend ActiveSupport::Concern

      include EducationalOrganization
    end
  end
end
