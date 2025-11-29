require "active_support/concern"

module SchemaOrg
  module Mixins
    module HighSchool
      extend ActiveSupport::Concern

      include EducationalOrganization
    end
  end
end
