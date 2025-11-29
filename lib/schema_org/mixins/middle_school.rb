require "active_support/concern"

module SchemaOrg
  module Mixins
    module MiddleSchool
      extend ActiveSupport::Concern

      include EducationalOrganization
    end
  end
end
