require "active_support/concern"

module SchemaOrg
  module Mixins
    module School
      extend ActiveSupport::Concern

      include EducationalOrganization
    end
  end
end
