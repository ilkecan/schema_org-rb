require "active_support/concern"

module SchemaOrg
  module Mixins
    module ElementarySchool
      extend ActiveSupport::Concern

      include EducationalOrganization
    end
  end
end
